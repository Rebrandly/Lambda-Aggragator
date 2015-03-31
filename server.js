/*!
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

// Load the http module to create an http server. 
var http = require('http');
// Load my custom crawl object
var LambdaCrawl = require('./js/module/LambdaCrawl.js');
// Load file writer
var fs = require('fs');



// dynamically load all modules from directory and create the list of crawl instances
var siteDir = './js/sites/', crawlLooper = [];
fs.readdirSync(siteDir).forEach(function(file) {
    var site = require(siteDir + file);
	var crawler = new LambdaCrawl(site);
	crawlLooper.push(crawler);
});

// every interval, check if current site is maxed out in ajax requests, and if
// so, then rotate it and start crawling the new site.
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





// Configure our HTTP server to respond to all requests.
var server = http.createServer(function (req, res) {

	// respond type, for now it only gives back plain text
	res.writeHead(200, {
		"Access-Control-Allow-Origin": "*",
		"Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept",
		"Content-Type": "application/json; charset=UTF-8"
	});
	
	//res.write(JSON.stringify(LambdaCrawl.getObj()));
	
	res.end();
});

// Listen on port 8000, IP defaults to 127.0.0.1
server.listen(8000);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");