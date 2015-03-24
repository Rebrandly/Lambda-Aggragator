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
		return root ? {
			duration : (new Date()) - startTime,
			downloadCount : runningAjaxCount,
			data : root
		} : {};
	};

	var BFSScan = function () {
		if (queue.length > 0) {
			var loopTimes = Math.min(queue.length, 5), s, i, v;
			
			s = queue.splice(-loopTimes, loopTimes);
			
			for(i=0; i<loopTimes; i+=1) {
				v = s.pop();
				
				runningAjaxCount += 1;
				
				v.downloadData({
					arrive: function() {

					},
					success : function(children) {
						Array.prototype.push.apply(queue, children);
					},
					httperror : function(data,status,xhr) {

					},
					parseerror: function(obj) {

					},
					complete : function() {
						BFSScan();
					}
				});
			}
		}
	};
}








var node = function(n) {

	var name = n;
	var children = [];
	var finished = false;
	var failed = false;

	this.getName = function() {
		return name
	};
	this.downloadData = function(obj) {
		// arrive
		obj.arrive();
		
		// worked
		var c = n=="Root" ? [new node("Site 1"), new node("Site 2"), new node("Site 3")] : [];
		Array.prototype.push.apply(children, c);
		obj.success(c);
		finished = true;
		
		// http error
		//obj.httperror(data,status,xhr);
		//failed = true;
		//handleHttpError(data,status,xhr);
		
		// parse error
		//obj.parseerror(obj);
		//failed = true;
		//parseerror(obj);
		
		// complete
		obj.complete();
	};

	this.getChildren = function() {
		return children;
	};
	this.isFinished = function() {
		return finished;
	};
	this.isFailed = function() {
		return failed;
	};
	
	var handleHttpError = function(data,status,xhr) {
		
	};
	var parseerror = function(obj) {
		
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

var root = new node("Root");
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