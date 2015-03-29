// Load the http module to create an http server. 
var http = require('http');
// Load my custom crawl object
var LambdaCrawl = require('./js/module/LambdaCrawl.js');



// list of LambdaCrawl instances
var crawlLooper = [];

// list of site modules
var sitesList = [
	require('./js/sites/forever21.js')
];

// create the list of crawl instances
var i; l=sitesList.length;
for(i=0; i<l; i+=1) {
	var site = sitesList[i];
	var crawler = new LambdaCrawl(site);
	crawlLooper.push(crawler);
}

// start crawling the first one
if (l > 0) {
	crawlLooper[0].scan();
}

// every interval, check if current site is maxed out in ajax requests, and if
// so, then rotate it and starts crawling the new site.
if (crawlLooper.length > 0) {
	setInterval(function(){ 
		var crawler = crawlLooper[0];
		if (!crawler.active()) {
			crawlLooper.push(crawlLooper.shift());
			console.log("Rotated sites!");
			crawlLooper[0].scan();
		}
	}, 3000);
}








/*
var root = new LambdaNode("Root", {
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
*/







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