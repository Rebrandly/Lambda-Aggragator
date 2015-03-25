// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the http module to create an http server. 
var http = require('http');
// Load the request module to make requests.
var request = require("request");


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
					arrive: function() {

					},
					finished : function(children) {
						Array.prototype.push.apply(queue, children);
					},
					httpError : function(data,status,xhr) {

					},
					parseError: function(data) {

					},
					complete : function() {
						BFSScan();
					}
				});
			}
		}
	};
}








var node = function(n, i, c) {

	var name = n;
	var input = i;
	var core = c;
	
	var children = [];
	var finished = false;
	var failed = false;

	this.downloadData = function(obj) {
		core(arrive, input, body, finished, httpError, parseError, complete, obj);
	};
	
	var arrive = function(obj) {
		obj.arrive();
	};
	var finished = function(obj, childList) {
		finished = true;
		Array.prototype.push.apply(children, childList);
		obj.finished(childList);
	};
	var httpError = function(obj, data, status, xhr) {
		failed = true;
		obj.httpError(data,status,xhr);
	};
	var parseError = function(obj, data) {
		failed = true;
		obj.parseError(data);
	};
	var complete = function(obj) {
		obj.complete();
	};
	
	this.toJSON = function() {
		return {
			name : name,
			children : children,
			finished : finished,
			failed : failed
		};
	};
};



var root = new node("Root", {
	data : ["http://www.forever21.com"]
},function(arrive, input, body, finished, httpError, parseError, complete, obj) {
	arrive(obj);
	
	
	var i, l = input.data.length, childList = [];
	for(i=0; i<l; i+=1) {
		var url = input.data[i];
		
		
		var newChild = new node("something", {
			data : url
		},function(arrive, input, body, finished, httpError, parseError, complete, obj) {
			
			request({
				uri: input.data
			}, function(error, response, body) {
				arrive(obj);
				
				if (error) {
					httpError(obj, error);
				} else {
					try {
						var childList = core(arrive, input, body, finished, httpError, parseError, complete, obj);
						finished(obj, childList);
					} catch (err) {
						parseError(obj, {
							message : err.message
						});
					}
				}
			
				complete(obj);
			});	

		});
		
		
		childList.push(newChild);
	}
	
	finished(obj, childList);
	complete(obj);
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