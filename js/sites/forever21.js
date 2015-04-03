/*
 * Forever21 Site Module
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

var nodes = [
	function(input) {
		return new LambdaNode(input.data, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
				// EQ(0) FOR TESTING PURPOSES
				return parsedHTML("head > link[rel=canonical],[rel=alternate]").eq(0).map(function(i, x) { 
					return (nodes[1])({
						data : $(x).attr("href"),
					}); 
				});	
			});
		});
	},
	function(input) {
		return new LambdaNode(input.data, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body), childList = [];
				
				parsedHTML("#divNav ul.menu > li").each(function(i, x) { 
					var header = $(x).find("a").eq(0);
					var tabName = header.text().trim();
					if (tabName != "Women" && tabName != "Men" && tabName != "Girls" && tabName != "Plus Sizes") {
						return;
					}

					var innerChildList = [];
					header.next().children("ul").find("li > a").each(function(i, x) {
						var linkName = $(x).text().trim();
						if (linkName == "Clothing") {
							return;
						}
						
						innerChildList.push({
							data : $(x).attr("href"),
							name : linkName
						});
					});
					
					childList.push((nodes[2])({
						data : innerChildList,
						name : tabName
					})); 
				});
				
				return childList;
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.directTemplate(input, scanEvents, function(input) {
				var dataList = input.data, i, l=dataList.length, childList=[];
				for(i=0; i<l; i+=1) {
					childList.push((nodes[3])({
						data : (dataList[i]).data,
						name : (dataList[i]).name
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

				// get id
				var categoryId = parsedHTML("body").attr("onunload").match(/'(\d+)'/)[1]; 
				
				// get more id's
				var inputs = parsedHTML("#CatalogSearchForm > input[name=storeId], #CatalogSearchForm > input[name=catalogId], #CatalogSearchForm > input[name=langId]");
				var storeId=$(inputs[0]).val(), catalogId=$(inputs[1]).val(), langId=$(inputs[2]).val();
				
				// calculate maximum page
				var totalItems = 240;
				var attr = parsedHTML("body div.paging_controls").eq(0).find("li.hoverover > a").last();
				if (attr.length > 0) {
					attr = attr.attr("onclick").match(/pageNumber:"(\d+)",pageSize:"(\d+)"/);
					var maxpageNumber = attr[1], pageSize = attr[2];
					totalItems = maxpageNumber * pageSize;
				} else {
					console.log("Page data not found, using default 240 for max number of items.");
				}
				
				// LIMIT IT FOR TESTING PURPOSES
				totalItems = Math.min(20, totalItems);
				
				// create child node for each page
				var i, childList=[], perPage = 20;       // LIMIT IT FOR TESTING PURPOSES
				for(i=0; i<totalItems; i+=perPage) {
					childList.push((nodes[4])({
						data : "http://www.forever21.com/shop/CategoryNavigationResultsView?langId="+langId+"&catalogId="+catalogId+"&categoryId="+categoryId+"&storeId="+storeId+"&beginIndex="+i+"&pageSize="+perPage,
						storeId : storeId,
						catalogId : catalogId,
						langId : langId,
						name : "Page with items " + (i+1) + "-" + (i+perPage)
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
				
				var items = parsedHTML("div[class=product] > div[class=product_image][id]");

				// create child node for each product
				var i, l=items.length, childList=[];
				for(var i=0; i<l; i+=1) {
					var item = $(items[i]);
					
					// get product id
					var id = $(item).attr("id").match(/\d+/)[0];
					// get product name
					var name = $(item).parent().find("> div.product_name").text().trim();
					// get product page link
					var link = $(item).find('a').eq(0).attr("onclick").match(/'([^,]+)'/)[1];
					
					childList.push((nodes[5])({
						data : link,
						id : id,
						storeId : input.storeId,
						catalogId : input.catalogId,
						langId : input.langId,
						name : name + " (" + id + ")"
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

				// find the snippet which gives info on other products
				var encodedjson = parsedHTML("#entitledItem_" + input.id).html();
				// decode the text fixing html entities
				var json = $('<div/>').html(encodedjson).text();
				// convert it into object
				var obj = JSON.parse(json);
				
				// get special id and size
				var i, l=obj.length, childList=[], itemList = "", sizeList=[], specialID = null;
				for(var i=0; i<l; i+=1) {
					specialID = (obj[i])["catentry_id"];
					itemList += "&itemId_"+(i+1)+"=" + specialID;
					var sizematch = JSON.stringify(obj[i]).match(/Size_(([0-9]|[A-Z])+|\d+(\/\d+)*)/);
					sizeList.push(sizematch == null ? sizematch : sizematch[1]);
				}
				
				// create child node for each product variation
				if (specialID != null) {
					childList.push((nodes[6])({
						data : "http://www.forever21.com/webapp/wcs/stores/servlet/GetInventoryStatusByIDView?storeId="+input.storeId+itemList,
						id : input.id,
						specialID : specialID,
						url : input.data,
						storeId : input.storeId,
						catalogId : input.catalogId,
						langId : input.langId,
						sizeList : sizeList,
						name : "Stock info for item " + input.id
					}));
				}
				
				return childList;
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				
				// result is json object but with some weird wrapping text, this removes that stuff
				var encodedjson = body.match(/({(.|\s)*})/)[0];
				// decode the text fixing html entities
				var json = $('<div/>').html(encodedjson).text().replace(/'/g, "\"");
				// repair json string
				var n = json.replace(/([a-zA-Z]+)(:)/g,'"$1"$2');
				// parse it to an object
				var obj = JSON.parse(n);
				
				// add the sizes
				var stockList = obj["results"], i, l=stockList.length;
				for(i=0; i<l; i+=1) {
					(stockList[i])["size"] = input.sizeList[i];
				}
				
				// create child node for each product variation
				var childList=[];
				childList.push((nodes[7])({
					data : "http://www.forever21.com/webapp/wcs/stores/servlet/GetCatalogEntryDetailsByIDView?storeId="+input.storeId+"&catalogId="+input.catalogId+"&langId="+input.langId+"&catalogEntryId="+input.specialID+"&prodCounter=1",
					obj : obj,
					id : input.id,
					url : input.url,
					name : "Product info for item " + input.id
				}));

				return childList;
			});
		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			node.downloadTemplate(input, scanEvents, function(body) {
				
				// result is json object but with some weird wrapping text, this removes that stuff
				var encodedjson = body.match(/({(.|\s)*})/)[0];
				// fix the stupid links
				var encodedjson = encodedjson.replace(/http:\/\/www\.forever21\..*\/(http)/g,'$1');
				// convert it into object
				var obj = JSON.parse(encodedjson);
				// remove useless info
				delete (obj["catalogEntry"])["catalogEntryIdentifier"];
				// add important info
				obj["id"] = input.id;
				obj["url"] = input.url;
				obj["inventory"] = input.obj;
				
				// add data to node metadata
				node.addmetadata("data", obj);
				// mark as leaf node
				node.addmetadata("leaf", true);
				
				return [];
			});
		});
	}
];

module.exports = new LambdaSite("http://www.forever21.com", 60, 4, nodes);