/*
 * Lambda Aggregator
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */


// rotate the site in each interval. Has tolerance for checking it should be done.
// past tolerance and it assumes the site is fully crawled
if (crawlLooper.length > 0) {	
	crawlLooper[0].scan();

	var INTERVAL = setInterval(function() { 
		var crawler = crawlLooper[0];
		if (crawler.isFinished()) {
			crawlLooper.shift();
		}
		if (crawlLooper.length == 0) {
			clearInterval(INTERVAL);
			console.log("All sites finished crawling");
		} else {
			console.log("Rotating sites...");
			if (crawler.readyToCrawl()) {
				crawler.scan();
			}
			crawlLooper.push(crawlLooper.shift());
		}
	}, ROTATION_FREQUENCY * 1000); 
} else {
	console.log("No sites to crawl...");
}