// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the http module to create an http server. 
var http = require('http');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var LambdaNode = require('./js/module/LamdaNode.js');


// list of LambdaCrawl instances
var crawlLooper = [];

// list of site modules
var sitesList = [require('./js/sites/forever21.js')]; // load all sites here

// create the list of crawl instances
var i; l=sitesList.length;
for(i=0; i<l; i+=1) {
	var site = sitesList[i];
	var siteRoot = site.getRoot();
	var crawler = new LambdaCrawl(siteRoot);
	crawlLooper.push(crawler);
}

// start crawling the first one
if (l > 0) {
	crawlLooper[0].scan();
}

// every interval, check if current site is maxed out in ajax requests, and if
// so, then rotate it and start crawling new site.
if (crawlLooper.length > 0) {
	setInterval(function(){ 
		var crawler = crawlLooper[0];
		if (!crawler.active()) {
			crawlLooper.push(crawlLooper.shift());
			console.log("Rotated sites!");
		}
	}, 3000);
}


// lambda crawl instance per site
var LambdaCrawl = function(r) {
	
	var stack = [];
	var root = r;
	var runningAjaxCount = 0;
	var totalAjaxCount = 0;
	var startTime = new Date();
	var maxvisitAJAX = 10;    
	var active = false;

	this.scan = function() {
		DFSScan();
		active = true;
		console.log("Started crawling: " + root.getName());
	};

	this.active = function() {
		return active;
	};
	
	this.getObj = function() {
		return {
			startTime : startTime,
			duration : (new Date()) - startTime,
			runningAjaxCount : runningAjaxCount,
			totalAjaxCount : totalAjaxCount,
			stackCount : stack.length,
			maxvisitAJAX : maxvisitAJAX,
			data : root
		};
	};

	this.DFSScan = function() {
		
		// only process if something in stack
		if (stack.length == 0) {
			return;
		}
		// don't go past time allocated
		if (runningAjaxCount >= maxvisitAJAX) {
			runningAjaxCount = 0;
			active = false;
			// TODO: switch to next site
			return;
		}
		
		// get last item in stack
		v = stack[stack.length - 1];
		
		// if not started processing
		if (v.getloopChild() == -1) { 
			// mark as started processing
			v.setloopChild(0);   
			
			// increment counters
			runningAjaxCount += 1;
			totalAjaxCount += 1;
			
			// start downloading the data
			v.downloadData({
				finished : function(children) {
					Array.prototype.push.apply(queue, children);
					
					// continue crawling
					DFSScan();
				},
				httpError : function(data) {
					
					// continue crawling
					DFSScan();
				},
				parseError: function(data) {
					
					// continue crawling
					DFSScan();
				}
			});
			
		// if finished processing
		} else if (v.finished()) {
		
			var children = v.getChildren();
			var targetIndex = v.getloopChild();
			
			// if child index pointing to a valid child
			if (targetIndex < children.length) {
				
				stack.push(children[targetIndex]);
				v.setloopChild(targetIndex + 1);
				
			// no more children, so remove from stack
			} else {
				stack.splice(stack.length - 1, 1);
			}
			
			// continue crawling
			DFSScan();
			
		// if failed
		} else if (v.failed()) {
			
			// node failed to remove from stack
			stack.splice(stack.length - 1, 1);
			
			// continue crawling
			DFSScan();
			
		// currently still processing?
		} else {
			console.log("Node still processing?");
		}			
	}
}

















var root = new LambdaNode.LambdaNode("Root", {
	data : [forever21]
}, function(input, processFunc, scanEvents, node) {
	processFunc(input, scanEvents, node);
}, function(rawData, scanEvents, node) {


	var i, l = rawData.data.length, childList = [];
	for(i=0; i<l; i+=1) {
		var url = rawData.data[i];
		
		//var newChild = 
		
		childList.push(newChild);
	}
	

	node.finished(scanEvents, childList);
});

LambdaCrawl.scan(root);



// Configure our HTTP server to respond to all requests.
var server = http.createServer(function (req, res) {

	// respond type, for now it only gives back plain text
	res.writeHead(200, {
		"Access-Control-Allow-Origin": "*",
		"Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept",
		"Content-Type": "application/json; charset=UTF-8"
	});

	res.write(JSON.stringify(LambdaCrawl.getObj()));
	
	res.end();
});

// Listen on port 8000, IP defaults to 127.0.0.1
server.listen(8000);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");