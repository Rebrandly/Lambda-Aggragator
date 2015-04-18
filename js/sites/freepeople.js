/*
 * FreePeople Site Module
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');
// Load my custom site object
var LambdaSite = require('../module/LambdaSite.js');
// Load my custom node object
var common = require('../common/common.js');

var url = "http://www.freepeople.com";

var nodes = [
	function(input) {
		return new LambdaNode(input.data, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);

				return parsedHTML("div.wl-navigation-banner li.link-item > a").map(function(i, x) { 
					var header = $(x);
					var link = header.attr("href");
					var tabName = header.text().trim();
					
					if (tabName == "New" || tabName == "Dresses" || tabName == "accessories" || tabName == "Swim" || tabName == "sale" || tabName == "trends") {
						return;
					}
					//if (tabName != "shoes") {
					//	return;
					//}
					
					return (nodes[1])({
						data : link,
						name : tabName
					}); 
				});	
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
		
				return parsedHTML("div#side-container li.link-item.link-group").eq(0).find("ul > li > a").map(function (i,x) {
					var header = $(x);
					var link = header.attr("href");
					var tabName = header.text().trim();
					
					//if (tabName != "clogs") {
					//	return;
					//}
					
					return (nodes[2])({
						data : link,
						name : tabName
					}); 
				});
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);

				var viewAllButton = parsedHTML("a:contains('View All')");
				if (viewAllButton.length <= 1) {
					var linkToAll = input.data;
				} else {					
					var linkToAll = url + viewAllButton.last().attr("href");
				}
		
				return [(nodes[3])({
					data : linkToAll,
					name : "Full Page"
				})]; 
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);

				var items = parsedHTML("li.thumbnail--large.thumbnail");
	
				var i, j, l=items.length, item, price, name, swatches, swatch, swatchlst, link, childList = [];
				for(i=0; i<l; i+=1) {
					item = $(items[i]);
					
					// find price
					price = item.find("div.offers").text().match(/\d.*[^\s]/)[0];
					price = price.replace(/,/g,"");
					
					// find name
					name = item.find("h3.name").text().trim();
					
					// find product variations
					swatches = item.find("dl.swatches > dd > a"), swatchlst = [];
					for(j=0; j<swatches.length; j+=1) {
						swatch = $(swatches[j]);
						swatchlst.push({
							name : swatch.attr("title"),
							image : swatch.attr("href")
						});
					}

					// find product url
					link = item.find("div.media > a").attr("href");
					
					childList.push((nodes[4])({
						data : link,
						name : name,
						price : price,
						swatches : swatches
					})); 
				}
				
				return childList;
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);

				node.addmetadata("leaf", true);
				
				return [];
			});
		});
	},
];

module.exports = new LambdaSite(url, 60, 4, nodes);