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

 
var LambdaCrawl = function(site) {

	var root = site.getRootNode();                             // the root node of the site
	var stack = [root];                                        // stack used for dfs search
	var runningAjaxCount = 0;                                  // the current ajax count
	var maxvisitAJAX = site.getmaxvisitAJAX();                 // the max ajax request in a row	
	var totalAjaxCount = 0;                                    // the total current ajax count
	var concurrentAjaxCalls = site.getconcurrentAjaxCalls();   // number of ajax calls at same time
	var goodNodes = [];                                        // records all good nodes
	var badNodes = [];                                         // record all bad nodes
	var visitedIDs = [];                                       // record all visited id's                    
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
		node.disconnectFromParent();
		console.log("FOUND BAD NODE!");
	};
	
	var registerComplete = function() {
		finished = true;
		saveSite();
	};
	
	var saveSite = function() {
		console.log("Saving site: " + site.getName());
		var str = JSON.stringify(crawler, null, '\t');
		$("body").append("<pre>" + str + "</pre>");
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
					checkItem: function(node, id) {
						// convert to string
						if (!(typeof id == 'string' || id instanceof String)) {
							id = String(id);
						}
						
						// create list if not exist
						var metadata = node.getmetadata();
						if (!metadata.hasOwnProperty("items")) {
							metadata["items"] = [];
						}
						// set in metadata
						metadata["items"].push(id);
						
						// record as visited
						if (visitedIDs.indexOf(id) == -1) {
							visitedIDs.push(id);
							return false;
						}
						
						return true;
					},
					setItem : function(node) {
						goodNodes.push(node);
					}
				});
			// if finished downloading, start looping through children
			} else if (v.doneDownload()) {
			
				if (v.getName() == "Party Dresses") {
					var a = 1;
				}
			
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
			numberofitems : goodNodes.length,
			numberoferrors : badNodes.length,
			root : root,
			goodNodes : goodNodes
		};
	};
};