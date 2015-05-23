/*
 * Lambda Crawl
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

var fs = require('fs');
 
module.exports = function(site) {

	var root = site.getRootNode();                             // the root node of the site
	var stack = [root];                                        // stack used for dfs search
	var runningAjaxCount = 0;                                  // the current ajax count
	var maxvisitAJAX = site.getmaxvisitAJAX();                 // the max ajax request in a row	
	var totalAjaxCount = 0;                                    // the total current ajax count
	var concurrentAjaxCalls = site.getconcurrentAjaxCalls();   // number of ajax calls at same time
	var numberofitems = 0;                                     // number of items
	var repeats = 0;                                           // number of repeats
	var visitedIDList = {};                                    // record all id's
	var badNodes = [];                                         // record all bad nodes
	var active = false;                                        // is this crawl active
	var finished = false;                                      // if this crawl finished
	var crawler = this;                                        // this instance
	
	this.scan = function() {
		active = true;
		runningAjaxCount = 0;
		DFSScan();
		console.log("Started crawling: " + root.getName());
	};
	
	this.readyToCrawl = function() {
		return didhitLimit() || !active;
	};
	
	this.isFinished = function() {
		return finished;
	};
	
	var didhitLimit = function() {
		return runningAjaxCount >= maxvisitAJAX;
	};
	
	var registerBadNode = function(node) {
		badNodes.push(node);
		var parent = node.getParent();
		if (parent != null) {
			parent.removeChild(node);
		}
		node.setParent(null);
		console.log("FOUND BAD NODE!");
	};
	
	var registerComplete = function() {
		finished = true;
		saveSite();
	};
	
	var saveSite = function() {
		console.log("Saving site: " + site.getName());
		var str = JSON.stringify(crawler);
		fs.writeFile("out/" + site.getName() + ".json", str, function(err) {
			if (err) {
				return console.log(err);
			}
			console.log(site.getName() + " was saved!");
		}); 
	};
	
	var DFSScan = function() {
		
		// don't go past time allocated
		if (didhitLimit()) {
			return;
		}
		
		// loop for every concurrent ajax call
		var l = stack.length, fromIndex = l - 1, toIndex = Math.max(0, l - concurrentAjaxCalls);
		for(i = fromIndex; i >= toIndex; i -= 1) {

			// get last item in stack
			var v = stack[i];
			
			// if not started processing
			if (!v.hasStartedLooping()) { 
			
				// mark as started processing
				v.setloopChild(0);   
				
				// increment counters
				runningAjaxCount += 1;
				totalAjaxCount += 1;
				
				// start downloading the data
				v.downloadData({
					finished : function(node) {
						DFSScan();
					},
					error : function() {
						DFSScan();
					},
					setItem : function() {
						numberofitems += 1;
					},
					recordID : function(id) {
						if (!(typeof id == 'string' || id instanceof String)) {
							id = String(id);
						}
						if (visitedIDList.hasOwnProperty(id)) {
							repeats += 1;
							return false;
						}
						visitedIDList[id] = true;
						return true;
					}
				});
			// if finished downloading, start looping through children
			} else if (v.doneDownload()) {
			
				var children = v.getChildren();
				var targetIndex = v.getloopChild();
				
				// if child index pointing to a valid child
				if (targetIndex < children.length) {
					stack.push(children[targetIndex]);
					targetIndex += 1;
				} 
				
				// check if still valid
				if (targetIndex < children.length) {
					v.setloopChild(targetIndex);
					DFSScan();
				} else {
					// no more children, so remove from stack
					stack.splice(i, 1);
					
					// if complete
					if (stack.length == 0) {
						registerComplete();
					} else {
						DFSScan();
					}
				}
			// if failed
			} else if (v.failed()) {
				
				// register it
				registerBadNode(v);
				
				// node failed, so remove from stack
				stack.splice(i, 1);
				
				// if complete
				if (stack.length == 0) {
					registerComplete();
				} else {
					// continue crawling
					DFSScan();
				}
			}
		}
	};
	
	this.toJSON = function() {
		return {
			stackCount : stack.length,
			runningAjaxCount : runningAjaxCount,
			maxvisitAJAX : maxvisitAJAX,
			totalAjaxCount : totalAjaxCount,
			concurrentAjaxCalls : concurrentAjaxCalls,
			numberofitems : numberofitems,
			repeats : repeats,
			numberoferrors : badNodes.length,
			root : root
		};
	};
};