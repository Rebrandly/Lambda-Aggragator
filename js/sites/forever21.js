// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var common = require('../common/common.js');

module.exports = new function() {
	
	var thisOBJ = this;
	var url = "http://www.forever21.com";
	
	var nodes = [
		{
			name : "Forever21 site root",
			
			getChildren : function(input, scanEvents, node) {

				// obtain raw data
				request({
					uri: input.data
				}, function(error, response, body) {
					if (error) {
						node.httpError(scanEvents, {
							message : error
						});
						return console.log(error);
					}
					
					try {
						// obtain child node data
						var parsedHTML = $.load(body);
						var links = parsedHTML("head > link[rel=canonical],[rel=alternate]");

						var childList = [];
						for(var i=0;i<links.length; i+=1) {
							var newnode = thisOBJ.getNode(1, {
								data : $(links[i]).attr("href")
							});
							childList.push(newnode);
						}
					} catch (err) {
						node.parseError(scanEvents, {
							message : err.message
						});
						return console.log(err.message);
					}
						
					// submit data
					node.finished(scanEvents, childList);
				});	
			}
		}
	];
	
	this.getNode = function(depth, input) {
		return common.getNode(nodes, depth, input, url);
	}
};