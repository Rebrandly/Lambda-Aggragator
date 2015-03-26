// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the http module to create an http server. 
var http = require('http');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var LambdaNode = require('./js/module/LamdaNode.js');

var LambdaCrawl = new function() {
	
	var queue = [];
	var root = null;
	var runningAjaxCount = 0;
	var startTime = null;
	var concurrentAJAX = 5;
	
	this.scan = function(r) {
		queue.length = 0;
		root = r;
		runningAjaxCount = 0;
		startTime = new Date();

		console.log("STARTED SEARCHING");
		queue.push(r);
		BFSScan();
	};

	this.getObj = function() {
		return {
			duration : (new Date()) - startTime,
			downloadCount : runningAjaxCount,
			data : root
		};
	};

	var BFSScan = function () {
		if (queue.length > 0) {
			var loopTimes = Math.min(queue.length, concurrentAJAX), s, i, v;
			
			s = queue.splice(-loopTimes, loopTimes);
			
			for(i=0; i<loopTimes; i+=1) {
				v = s.pop();
				
				runningAjaxCount += 1;
				
				v.downloadData({
					finished : function(children) {
						Array.prototype.push.apply(queue, children);
						BFSScan();
					},
					httpError : function(data) {
						BFSScan();
					},
					parseError: function(data) {
						BFSScan();
					}
				});
			}
		}
	};
}












var root = new LambdaNode.LambdaNode("Root", {
	data : ["http://www.forever21.com"]
}, function(input, processFunc, scanEvents, node) {
	processFunc(input, scanEvents, node);
}, function(rawData, scanEvents, node) {


	var i, l = rawData.data.length, childList = [];
	for(i=0; i<l; i+=1) {
		var url = rawData.data[i];
		
		var newChild = new LambdaNode.LambdaNode("something", {
			data : url
		}, function(input, processFunc, scanEvents, node) {
			request({
				uri: input.data
			}, function(error, response, body) {

				if (error) {
					node.httpError(scanEvents, {
						message : error
					});
				} else {
					try {
						processFunc(body, scanEvents, node);
					} catch (err) {
						node.parseError(scanEvents, {
							message : err.message
						});
					}
				}
			});	
		}, function(rawData, scanEvents, node) {
			var childList = [];
			node.finished(scanEvents, childList);
		});
		
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