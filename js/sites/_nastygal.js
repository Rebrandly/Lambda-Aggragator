/*
 * NastyGal Site Module
 *
 * Developer: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Last Modified Date: 02:58:41 24/05/2015
 */


// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');
// Load my custom site object
var LambdaSite = require('../module/LambdaSite.js');
// Load my custom node object
var common = require('../common/common.js');


var name = "NastyGal";
var city = "Los Angeles";
var country = "California";
var url = "http://www.nastygal.com";


var nodes = [
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.directTemplate(input, scanEvents, function(input) {
				node.addmetadata("site_info", {
					url: url,
					city : city,
					country : country
				});
				
				return [(nodes[1])({
					data : input.data,
					name : "Women"
				})]; 
			});

		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
			
				return parsedHTML("li.nav-item-shop a.subhead").map(function(i, x) { 
					var header = $(x);
					
					var tabName = header.text().trim();
					if (tabName != "Clothes" && tabName != "Shoes") {
						return;
					}
			
					return (nodes[2])({
						data : header.attr("href"),
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
			
				return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
					var header = $(x);
					
					var tabName = header.text().trim();
					if (tabName == "Back In Stock") {
						return;
					}
					
					return (nodes[3])({
						data : url + header.attr("href"),
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
			
				return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
					var header = $(x);
					
					return (nodes[4])({
						data : url + header.attr("href") + "?viewAll=true",
						name : header.text().trim()
					}); 
				});	
			});

		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
				
				return parsedHTML("div.product-list-item").map(function(i, x) { 
					var item = $(x);
					
					// get id
					var id = item.attr("data-product-id");
			
					// handle repeats
					if (scanEvents.checkItem(node, id)) {
						return;
					}
					
					// get name
					var name = item.find("div.product-name").text().trim();
			
					// get price
					var pricetag = item.find("div.product-price");
					var newpricetag = pricetag.find("span.current-price");
					var originalpricetag = pricetag.find("span.original-price");
					var current_price = parseFloat(newpricetag.text().match(/\d+\.\d+/));
					var original_price = originalpricetag.length == 0 ? current_price : parseFloat(originalpricetag.text().match(/\d+\.\d+/));
			
					// link
					var link = item.find("a.product-link").attr("href");
					
					return (nodes[5])({
						data : link,
						id : id,
						name : name,
						current_price : current_price,
						original_price : original_price
					}); 
				});	
			});

		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
			
				// get image list
				var imagehtml = parsedHTML("#product-images-carousel li.carousel-item img");
				var i, l=imagehtml.length, imageList=[];
				for(i=0; i<l; i+=1) {
					var item = $(imagehtml[i]);
					imageList.push(item.attr("src"));
				}
				
				// get size list
				var sizeshtml = parsedHTML("div.product-sizes div.radio label.sku-label");
				var i, l=sizeshtml.length, sizes=[];
				for(i=0; i<l; i+=1) {
					var stock_min = $(sizeshtml[i]).attr("data-availableinventory");
					var stock_max = stock_min;
					var hasMore = false;
					
					if (stock_min == "low") {
						stock_min = 1;
						stock_max = 5;
					} else if (stock_min == "normal") {
						stock_min = 6;
						stock_max = 6;
						hasMore = true;
					} else {
						stock_min = parseInt(stock_min, 10);
						stock_max = stock_min;
					}
					
					sizes.push({
						size : $(sizeshtml[i]).text().trim(),
						stock_min : stock_min,
						stock_max : stock_min,
						hasMore : hasMore
					});
				}
			
				// get description
				var deschtml = parsedHTML("div.product-description p");
				var i, l=deschtml.length, desclist=[];
				for(i=0; i<l; i+=1) {
					desclist.push($(deschtml[i]).text().trim());
				}
				var desc = desclist.join("<br/>");
			
				// add data to node metadata
				node.addmetadata("url", input.data);
				node.addmetadata("id", input.id);
				node.addmetadata("current_price", input.current_price);
				node.addmetadata("original_price", input.original_price);
				node.addmetadata("long_desc", desc);
				node.addmetadata("variations", [
					{ 
						image_links: imageList,
						sizes : sizes
					}
				]);
				
				// register item
				scanEvents.setItem(node);
				
				return [];
			});
		});
	}
];


module.exports = new LambdaSite(name, url, 60, 4, nodes);