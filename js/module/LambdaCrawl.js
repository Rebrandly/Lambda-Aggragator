/*
 * Lambda Aggregator v0.0.2
 * http://lambdaaggregation.com/
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

module.exports = function(site) {

	var root = site.getRootNode();                             // the root node of the site
	var stack = [root];                                        // stack used for dfs search
	var runningAjaxCount = 0;                                  // the current ajax count
	var totalAjaxCount = 0;                                    // the total current ajax count
	var maxvisitAJAX = site.getmaxvisitAJAX();                 // the max ajax request in a row	
	var startTime = null;                                      // time the scan began
	var endTime = startTime;                                   // time of supposed complete
	var concurrentAjaxCalls = site.getconcurrentAjaxCalls();   // number of ajax calls at same time
	var numberoferrors = 0;                                    // number of errors
	var numberofitems = 0;                                     // number of items
	var repeats = 0;                                           // number of repeats
	var visitedIDList = {};                                    // record all id's

	this.scan = function() {
		runningAjaxCount = 0;
		DFSScan();
		
		if (startTime == null) {
			startTime = new Date();
		}
		console.log("Started crawling: " + root.getName());
	};
	
	this.getStartTime = function() {
		return startTime;
	};
	
	this.hitLimit = function() {
		return runningAjaxCount >= maxvisitAJAX;
	};
	
	var DFSScan = function() {
		
		// set end time
		endTime = new Date();
		
		// don't go past time allocated
		if (runningAjaxCount >= maxvisitAJAX) {
			return;
		}
		
		// loop for every concurrent ajax call
		var l = stack.length, fromIndex = l - 1, toIndex = Math.max(0, l - concurrentAjaxCalls);
		for(i = fromIndex; i >= toIndex; i -= 1) {

			// get last item in stack
			var v = stack[i];
			
			// if not started processing
			if (v.getloopChild() == -1) { 
			
				// mark as started processing
				v.setloopChild(0);   
				
				// increment counters
				runningAjaxCount += 1;
				totalAjaxCount += 1;
				
				// start downloading the data
				v.downloadData({
					finished : function(children, isleaf) {
						if (isleaf) {
							numberofitems += 1;
						}						
						
						// continue crawling
						DFSScan();
					},
					httpError : function(data) {
						numberoferrors += 1;
						
						// continue crawling
						DFSScan();
					},
					parseError: function(data) {
						numberoferrors += 1;
						
						// continue crawling
						DFSScan();
					},
					emptyError : function(data) {
						numberoferrors += 1;
						
						// continue crawling
						DFSScan();	
					},
					recordID : function(id) {
						var strid = String(id);
						if (visitedIDList.hasOwnProperty(strid)) {
							repeats += 1;
							return false;
						}
						visitedIDList[strid] = true;
						return true;
					}
				});
				
			// if finished processing
			} else if (v.done()) {
			
				var children = v.getChildren();
				var targetIndex = v.getloopChild();
				
				// if child index pointing to a valid child
				if (targetIndex < children.length) {
					
					stack.push(children[targetIndex]);
					v.setloopChild(targetIndex + 1);
					
				// no more children, so remove from stack
				} else {
					stack.splice(i, 1);
				}
				
				// continue crawling
				DFSScan();

			// if failed
			} else if (v.failed()) {
				
				// node failed to remove from stack
				stack.splice(i, 1);
				
				// continue crawling
				DFSScan();
			}
		}
	};
	
	this.toJSON = function() {
		return {
			stackCount : stack.length,
			runningAjaxCount : runningAjaxCount,
			totalAjaxCount : totalAjaxCount,
			startTime : startTime,
			duration : endTime - startTime,
			maxvisitAJAX : maxvisitAJAX,
			concurrentAjaxCalls : concurrentAjaxCalls,
			numberoferrors : numberoferrors,
			numberofitems : numberofitems,
			repeats : repeats,
			root : root
		};
	};
};