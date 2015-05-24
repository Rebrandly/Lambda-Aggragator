/*
 * FreePeople Site Module
 *
 * Developer: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Last Modified Date: 11:03:47 24/05/2015
 */


/*

var name = "FreePeople";
var city = "Philadelphia";
var country = "Pennsylvania";
var url = "http://www.freepeople.com";


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
			
				return parsedHTML("div.wl-navigation-banner li.link-item > a").map(function(i, x) { 
					var header = $(x);
					var link = header.attr("href");
					var tabName = header.text().trim();
					
					// filter high level categories
					if (tabName == "New" || tabName == "Dresses" || tabName == "accessories" || tabName == "trends") {
						return;
					}
					
					//if (tabName != "sale") { // clothes
					//	return;
					//}
					//console.log(tabName);
					
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
				
				return parsedHTML("div#side-container li.link-item.link-group").eq(0).find("ul > li > a").map(function (i,x) {
					var header = $(x);
					var link = header.attr("href");
					var tabName = header.text().trim();
					
					//if (tabName != "new sale") { // Dresses
					//	return;
					//}
					//console.log(tabName);
					
					return (nodes[3])({
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
			
				// get the link to the button to view all products at same time, if it exists
				var viewAllButton = parsedHTML("a:contains('View All')");
				var linkToAll = viewAllButton.length <= 1 ? input.data : url + viewAllButton.last().attr("href");
			
				return [(nodes[4])({
					data : linkToAll,
					name : "View All"
				})]; 
			});

		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
			
				return parsedHTML("li.thumbnail--large.thumbnail").map(function(i, x) {
					var item = $(x);
					
					// find id
					var id = item.find("div[data-stylenumber]").attr("data-stylenumber");
					
					// handle repeats
					if (scanEvents.checkItem(node, id)) {
						return;
					}
					
					// name
					var name = item.find("h3.name").text().trim();
					//if (name != "Mini Paddle Earrings") {
					//	return;
					//}
					//console.log(name);
					
					// price
					var newpricetag = item.find("span.price");
					var originalpricetag = item.find("del.original");
					var current_price = parseFloat(newpricetag.text().match(/\d+\.\d+/));
					var original_price = originalpricetag.length == 0 ? current_price : parseFloat(originalpricetag.text().match(/\d+\.\d+/));
					
					// find product url
					var link = item.find("div.media > a").attr("href");
					
					return (nodes[5])({
						data : link,
						name : "Stock",
						prod_name : name,
						id : id,
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
				
				// this part reads the variation image links and names and puts them into objects
				var match = body.match(/productImages\['[\w|-]+'\]\["[\w|-]+"\]\["[\w]"\]\["(\w+)"\] = "(.*)";/g);
				if (match == null) {
					throw { 
						message : "Invalid product page" 
					};
				}
				
				var i, l=match.length, mainList = [], obj = {};
				for(i=0; i<l; i+=1) {
					var str = match[i];
					var new_match = str.match(/\["(\w+)"\] = \"(.*)"/);
					
					var prop = new_match[1]
					var val = new_match[2];
					
					if (prop == "aliasName") {
						obj[prop] = val;
					}
					if (prop == "detailSize") {
						obj["image_links"] = [val];
						
						mainList.push(obj);
						obj = {};
					}
				}
			
				// this part groups the objects in a meaningful way
				l=mainList.length;
				for(i=l-1; i>0; i-=1) {
					var last = mainList[i];
					var before_last = mainList[i-1];
					
					if (last["aliasName"] == before_last["aliasName"]) {
						before_last["image_links"] = before_last["image_links"].concat(last["image_links"]);
						mainList.splice(i, 1);
					}
				}
			
				var cleanStr = function(str) {
					str = str.replace(/^(\r|\n| |\t)+/, "");
					str = str.replace(/(\r|\n| |\t)+$/, "");
					str = str.replace(/  +/g, " ");
					str = str.replace(/ *\r\n */g, "</br>");
					return str;
				};
				
				// desc
				var long_desc = cleanStr(parsedHTML("div.long-desc").text());
				var material_desc = cleanStr(parsedHTML("div.care-desc").text());
				var sizing_desc = cleanStr(parsedHTML("div.sizing-desc").text());
				var desc = long_desc + "<br/>" + material_desc + "<br/>" + sizing_desc;
				
				if (desc == null) {
					console.log("desc = null");
				} else {
					//console.log(desc);
					var spandex = desc.match(/(\d+% )?Spandex/gi);
					var neoprene = desc.match(/\d+% Neoprene/gi);
					var nylon = desc.match(/(\d+% )?Nylon/gi);
					var cotton = desc.match(/\d+% Cotton/gi);
					var polyamide = desc.match(/\d+% Polyamide/gi);
					var poliamyd = desc.match(/\d+% Poliamyd/gi);
					var elastane = desc.match(/\d+% Elastane/gi);
					var elastomer = desc.match(/\d+% Elastomer/gi);
					var leather = desc.match(/(\d+% )?Leather/gi);
					var voile = desc.match(/(\d+% )?Solid Soft Voile/gi);
					var polyester = desc.match(/\d+% Polyester/gi);
					var lycraspandex = desc.match(/\d+% Lycra Spandex/gi);
					var rayon = desc.match(/(\d+% )?Rayon/gi);
					var linen = desc.match(/\d+% Linen/gi);
					var viscose = desc.match(/\d+% Viscose/gi);
					var wool = desc.match(/\d+% Wool/gi);
					var acrylic = desc.match(/\d+% Acrylic/gi);
					var modal = desc.match(/\d+% Modal/gi);
					var pimacotton = desc.match(/\d+% Pima Cotton/gi);
					var silk = desc.match(/\d+% Silk/gi);
					
					if (spandex!=null) {
						console.log(spandex[0]);
					} else if (neoprene!=null) {
						console.log(neoprene[0]);
					} else if (nylon!=null) {
						console.log(nylon[0]);
					} else if (cotton!=null) {
						console.log(cotton[0]);
					} else if (polyamide!=null) {
						console.log(polyamide[0]);
					} else if (elastane!=null) {
						console.log(elastane[0]);
					} else if (leather!=null) {
						console.log(leather[0]);
					} else if (polyester!=null) {
						console.log(polyester[0]);
					} else if (lycraspandex!=null) {
						console.log(lycraspandex[0]);
					} else if (rayon!=null) {
						console.log(rayon[0]);
					} else if (linen!=null) {
						console.log(linen[0]);
					} else if (voile!=null) {
						console.log(voile[0]);
					} else if (poliamyd!=null) {
						console.log(poliamyd[0]);
					} else if (elastomer!=null) {
						console.log(elastomer[0]);
					} else if (viscose!=null) {
						console.log(viscose[0]);
					} else if (wool!=null) {
						console.log(wool[0]);
					} else if (acrylic!=null) {
						console.log(acrylic[0]);
					} else if (modal!=null) {
						console.log(modal[0]);
					} else if (pimacotton!=null) {
						console.log(pimacotton[0]);
					} else if (silk!=null) {
						console.log(silk[0]);
					} else {
						console.log(desc);
						throw { 
							message : "MATERIAL NOT FOUND!!!" 
						};
					}
				}
			
				// link to stock
				var link = parsedHTML("a.more-info.availability.dialog").attr("href");
				
				return [(nodes[6])({
					data : link,
					name : input.prod_name,
					url : input.data,
					id : input.id,
					variations : mainList,
					current_price : input.current_price,
					original_price : input.original_price,
					long_desc : desc
				})]; 
			});

		});
	},
	function(input) {
		return new LambdaNode(input.name, input, function(input, scanEvents, node) {
			
			node.downloadTemplate(input, scanEvents, function(body) {
				var parsedHTML = $.load(body);
				
				// gets all rows of stock info, and groups them up into objects
				var tablerows = parsedHTML("table.row-data > tbody > tr"), i, j, k, q, w, l=tablerows.length, lst, mainlst = [];
				for(i=0; i<l; i+=1) {
					var row = $(tablerows[i]);
					if (row.hasClass("first")) {
						lst = [row];
					} else if (row.hasClass("last")) {
						lst.push(row);
						mainlst.push(lst);
					} else {
						lst.push(row);
					}
				}
			
				// this part adds the stock/size info to each variation
				for(i=0; i<mainlst.length; i+=1) {
					var items = mainlst[i];
					for(j=0; j<items.length; j+=1) {
						var item = items[j];
						
						if (j==0) {
							q = null;
							
							var img = item.find("img");
							var swatch_link = img.attr("src");
							var alias_name = img.attr("alt");
							
							for(k=0; k<input.variations.length; k+=1) {
								w = input.variations[k];
								if (w["aliasName"] == alias_name) {
									w["swatch_link"] = swatch_link;
									w["sizes"] = [];
									q = w;
									break;
								}
							}
							
							if (q == null) {
								break;
							}
						}
						
						var size = item.find("td.item-size").text().trim();
						var raw_stock = item.find("td.item-availability").text().trim();
						
						var stock = raw_stock.match(/(\d+-\d+|\d+)/);
						stock = stock==null || stock.length == 0 ? 0 : stock[0];
						var hasMore = raw_stock.indexOf("+") != -1;
						
						q["sizes"].push({
							size : size,
							stock_min : parseInt(stock, 10),
							stock_max : parseInt(stock, 10),
							hasMore : hasMore
						});
					}
				}
			
				// add data to node metadata
				node.addmetadata("url", input.url);
				node.addmetadata("id", input.id);
				node.addmetadata("current_price", input.current_price);
				node.addmetadata("original_price", input.original_price);
				node.addmetadata("long_desc", input.long_desc);
				node.addmetadata("variations", input.variations);
				
				// register item
				scanEvents.setItem(node);
				
				return [];
			});
		});
	}
];


crawlLooper.push(new LambdaCrawl(new LambdaSite(name, url, 60, 4, nodes)));

*/