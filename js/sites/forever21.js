/*!
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
// Load my custom node object
var common = require('../common/common.js');

module.exports = new function() {
	
	var url = "http://www.forever21.com";
	
	this.getURL = function() {
		return url;
	};
	
	this.getRootNode = function() {
		return (nodes[0])({
			data : url
		});
	};
	
	var nodes = [
		function(input) {
			return new LambdaNode("Forever21 site root", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					return parsedHTML("head > link[rel=canonical],[rel=alternate]").eq(0).map(function(i, x) { 
						return (nodes[1])({
							data : $(x).attr("href")
						}); 
					});	
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site country", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					return parsedHTML("#divNav .columns a").map(function(i, x) { 
						return (nodes[2])({
							data : $(x).attr("href")
						}); 
					});
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site upper category", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					return parsedHTML("div.mdrop_column.columns.department_2 > ul > li > a:not([onclick])").map(function(i, x) { 
						return (nodes[3])({
							data : $(x).attr("href")
						}); 
					});
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site inner category", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					
					// get id
					var categoryId = parsedHTML("body").attr("onunload").match(/'(\d+)'/)[1]; 

					// get more id's
					var objStr = parsedHTML("head > script:not([src])").eq(0).html().match(/({(\s+|"[a-zA-Z]+":'(-?\d+|[a-z]+)?',?)+})/)[0];
					var objStr = objStr.replace(/'/g, "\"");
					var dataOBJ = JSON.parse(objStr); 
					var storeId=dataOBJ.storeId, catalogId=dataOBJ.catalogId, langId=dataOBJ.langId;
					
					// calculate maximum page
					var attr = parsedHTML("body div.paging_controls").eq(0).find("li.hoverover > a").last().attr("onclick");
					var attr = attr.match(/pageNumber:"(\d+)",pageSize:"(\d+)"/);
					var maxpageNumber = attr[1], pageSize = attr[2];
					var maxItems = maxpageNumber * pageSize;
					
					// create child node for each page
					var i, childList=[], perPage = 300;
					for(i=0; i<maxItems; i+=perPage) {
						childList.push((nodes[4])({
							data : "http://www.forever21.com/shop/CategoryNavigationResultsView?langId="+langId+"&catalogId="+catalogId+"&categoryId="+categoryId+"&storeId="+storeId+"&beginIndex="+i+"&pageSize="+perPage,
							storeId : storeId,
							catalogId : catalogId,
							langId : langId
						}));
					}

					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site page", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					
					var items = parsedHTML("div[class=product] > div[class=product_image][id]");

					// create child node for each product
					var i, l=items.length, childList=[];
					for(var i=0; i<l; i+=1) {
						var item = $(items[i]);
						
						// get product id
						var id = $(item).attr("id").match(/\d+/)[0];

						// get product page link
						var link = $(item).find('a').eq(0).attr("onclick").match(/'([^,]+)'/)[1];

						childList.push((nodes[5])({
							data : link,
							id : id,
							storeId : input.storeId,
							catalogId : input.catalogId,
							langId : input.langId
						}));
					}

					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 product page", input, function(input, scanEvents, node) {
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
						sizeList.push(JSON.stringify(obj[i]).match(/Size_([A-Z]+)/)[1]);
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
							sizeList : sizeList
						}));
					}
					
					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 product stock page", input, function(input, scanEvents, node) {
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
						url : input.url
					}));

					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 product variation/size page", input, function(input, scanEvents, node) {
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
};