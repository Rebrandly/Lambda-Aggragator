// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');

module.exports = new function() {
	
	var url = "http://www.forever21.com";
	
	var nodes = [
		{
			name : "Forever21 site",
			
			input : {
				data : url
			},
			
			getRaw : function(input, processFunc, scanEvents, node) {
				request({
					uri: input.data
				}, function(error, response, body) {
					if (error) {
						node.httpError(scanEvents, {
							message : error
						});
					} else {
						processFunc(body, scanEvents, node);
					}
				});	
			},
			
			getChildren : function(rawData, scanEvents, node) {
				try {
					var childList = [];
				} catch (err) {
					node.parseError(scanEvents, {
						message : err.message
					});
				}
				
				node.finished(scanEvents, childList);
			}
		}
	];

	this.getNode = function(depth) {
		
		if (depth >= nodes.length) {
			console.log("Site '" + url + "' does not support depth level '" + depth + "'!");
			return null;
		}
		
		var nodeData = nodes[depth];
		return new LambdaNode(nodeData.name, nodeData.input, nodeData.getRaw, nodeData.getChildren);
	};
};