// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var common = require('../common/common.js');

module.exports = new function() {
	
	var url = "http://www.forever21.com";
	
	var nodes = [
		{
			name : "Forever21 site",
			
			getChildren : function(input, scanEvents, node) {

				// obtain raw data
				request({
					uri: input.data
				}, function(error, response, body) {
					if (error) {
						node.httpError(scanEvents, {
							message : error
						});
						return;
					}
					
					try {
						// obtain child node data
						
						
						var fs = require('fs');
						fs.writeFile("test.html", body, function(err) {
							if(err) {
								return console.log(err);
							}
							console.log("The file was saved!");
						}); 

						
						
						
						
						
						
						var childList = [];	
					} catch (err) {
						node.parseError(scanEvents, {
							message : err.message
						});
						return;
					}
						
					node.finished(scanEvents, childList);
				});	
			}
		}
	];

	this.getNode = function(depth, input) {
		return common.getNode(nodes, depth, input, url);
	}
};