/*
 * PixieMarket Site Module
 *
 * Developer: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Last Modified Date: 03:11:57 24/04/2015
 */


// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');
// Load my custom site object
var LambdaSite = require('../module/LambdaSite.js');
// Load my custom node object
var common = require('../common/common.js');


var url = "http://www.pixiemarket.com";


var nodes = [
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.directTemplate(input, scanEvents, function(input) {
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
			
				return parsedHTML("ul.menu-catalog > li").map(function(i, x) { 
					var header = $(x);
					var tabName = header.find("a").eq(0).text().trim();
			
					// filter high level categories
					if (tabName == "What's new" || tabName == "Accessories" || tabName == "Sale" || tabName == "$20$30$40SALE" || tabName == "Back to stock" || tabName == "Blog") {
						return;
					}
					
					var subheaders = header.find("ul.drop > li > a");
					subheaders.splice(0,1);
					
					return (nodes[2])({
						name : tabName,
						subheaders : subheaders
					}); 
				});	
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.directTemplate(input, scanEvents, function(input) {
				var dataList = input.subheaders, i, l = dataList.length, childList=[];
				for(i=0; i<l; i+=1) {
					var anchor = $(dataList[i]);
					childList.push((nodes[3])({
						data : anchor.attr("href") + "?limit=all",
						name : anchor.text().trim()
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
				
				var lst = parsedHTML("div.category-products > ul.products-grid > li.item");
				if (lst.length == 0) {
					return [];
				}
				
				var childList =  lst.map(function(i, x) { 
					var item = $(x);
					
					// get name
					var name = item.find("p.thumb-caption-title").text().trim();
			
					// avoid repeats
					if (!scanEvents.recordID(name)) {
						console.log("detected repeat: " + name);
						return;
					}
					
					if (i > 0) return;
					
					// get price
					var pricetag = item.find("div.price-box");
					var newprice = pricetag.find("span.special-price");
					var price = newprice.length > 0 ? newprice.text().match(/\d+\.\d+/) : pricetag.text().match(/\d+\.\d+/);
					price = parseFloat(price);
			
					// link
					var link = item.find("a.thumb-image").attr("href");
					
					return (nodes[4])({
						data : link,
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
				var imagehtml = parsedHTML("#more-views > ul > li > a");
				var i, l=imagehtml.length, imageList=[];
				for(i=0; i<l; i+=1) {
					var item = $(imagehtml[i]);
					imageList.push(item.attr("rel").match(/smallimage: '([^ ]+)'/)[1]);
				}
			
				// get size list
				var sizeshtml = parsedHTML("ul.size-list-wrapper > li > a");
				var i, l=sizeshtml.length, sizes=[];
				for(i=0; i<l; i+=1) {
					sizes.push({
						size: $(sizeshtml[i]).attr("rel")
					});
				}
			
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
				node.addmetadata("price", input.price);
				node.addmetadata("long_desc", desc);
				node.addmetadata("variations", {
					"0" : { 
						image_links: imageList,
						sizes : sizes
					}
				});
				
				return [];
			});		});
	}
];


module.exports = new LambdaSite(url, 60, 4, nodes);