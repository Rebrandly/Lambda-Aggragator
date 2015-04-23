/*
 * NastyGal Site Module
 *
 * Developer: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Last Modified Date: 01:34:48 23/04/2015
 */


// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');
// Load my custom site object
var LambdaSite = require('../module/LambdaSite.js');
// Load my custom node object
var common = require('../common/common.js');


var url = "http://www.nastygal.com";


var nodes = [
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
			
					return (nodes[1])({
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
					
					return (nodes[2])({
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
					
					return (nodes[3])({
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
				
				var lst = parsedHTML("div.product-list-item");
				if (lst.length == 0) {
					return [];
				}
				
				var childList =  lst.map(function(i, x) { 
					var item = $(x);
					
					// get name
					var name = item.find("div.product-name").text().trim();
			
					// get id
					var id = item.attr("data-product-id");
			
					// avoid repeats
					if (!scanEvents.recordID(id)) {
						console.log("detected repeat: " + id);
						return;
					}
					
					// get price
					var pricetag = item.find("div.product-price");
					var newprice = pricetag.find("span.current-price.sale");
					var price = newprice.length > 0 ? newprice.text().match(/\d+\.\d+/) : pricetag.text().match(/\d+\.\d+/);
					price = parseFloat(price);
			
					// link
					var link = item.find("a.product-link").attr("href");
					
					return (nodes[4])({
						data : link,
						id : id,
						name : name,
						price : price
					}); 
				});	
				
				if (childList.length == 0) {
					throw {
						message : "Empty due to all children being duplicates"
					};
				}
				
				return childList;
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
				var sizeshtml = parsedHTML("ul.size-list-wrapper > li > a");
				var i, l=sizeshtml.length, sizes=[];
				for(i=0; i<l; i+=1) {
					sizes.push($(sizeshtml[i]).attr("rel"));
				}
				
				console.log(JSON.stringify(imageList));
				return [];
				
			
				// get id
				var id = parsedHTML("span.sku").text().trim();
				
				// get description
				var deschtml = parsedHTML("#tabs-1 > p");
				var i, l=deschtml.length, desclist=[];
				for(i=0; i<l; i+=1) {
					desclist.push($(deschtml[i]).text().trim());
				}
				var desc = desclist.join("<br/>");
			
				// mark as leaf
				node.addmetadata("leaf", true);
				
				// add data to node metadata
				node.addmetadata("url", input.data);
				node.addmetadata("id", id);
				node.addmetadata("variations", sizes);
				node.addmetadata("price", input.price);
				node.addmetadata("long_desc", desc);
				node.addmetadata("name", input.name);
				node.addmetadata("images", imageList);
				
				return [];
			});		});
	}
];


module.exports = new LambdaSite(url, 60, 4, nodes);