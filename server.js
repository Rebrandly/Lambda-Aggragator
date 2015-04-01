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

// rotate the site in each interval. Has tolerance for checking it should be done.
// past tolerance and it assumes the site is fully crawled
if (crawlLooper.length > 0) {
	setInterval(function(){ 
		console.log("Rotating sites...");
		crawlLooper.push(crawlLooper.shift());
		var crawler = crawlLooper[0];
		if (crawler.getStackSize() == 0) {
			if (crawler.getcheckTimes() < 10) {
				crawler.incrementcheckTimes();
			} else {
				return;
			}
		}
		if (!crawler.active()) {
			crawler.scan();
		}
	}, 5 * 1000);
}



var common = require('./js/common/common.js');

// Configure our HTTP server to respond to all requests.
var server = http.createServer(function (req, res) {

	// respond type, for now it only gives back plain text
	res.writeHead(200, {
		"Access-Control-Allow-Origin": "*",
		"Access-Control-Allow-Headers": "Origin, X-Requested-With, Content-Type, Accept",
		"Content-Type": "application/json; charset=UTF-8"
	});
	
	res.write(JSON.stringify({
		response : crawlLooper
	}));

	res.end();
});

// Listen on port 8000, IP defaults to 127.0.0.1
server.listen(8000);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");