// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');

module.exports = new function() {
	
	var base = "http://www.forever21.com";
	
	var nodes = [
		{
			name : "something",
			getRaw : new LambdaNode.LambdaNode("something", {
				data : url
			}, function(input, processFunc, scanEvents, node) {
				request({
					uri: input.data
				}, function(error, response, body) {

					if (error) {
						node.httpError(scanEvents, {
							message : error
						});
					} else {
						try {
							processFunc(body, scanEvents, node);
						} catch (err) {
							node.parseError(scanEvents, {
								message : err.message
							});
						}
					}
				});	
			}, function(rawData, scanEvents, node) {
				var childList = [];
				node.finished(scanEvents, childList);
			}),
			getChildren : 
		}
	];

	this.getNode = function(depth) {
		if (depth >= nodes.length) {
			console.log("Site '" + base + "' does not support depth level '" + depth + "'!");
			return null;
		}
		
		var nodeData = nodes[depth];
		return new LambdaNode(nodeData.name, nodeData.input, nodeData.getRaw, nodeData.getChildren);
	};
};