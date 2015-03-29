// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');

module.exports = {
	
	base : "http://www.forever21.com",
	

	/*
	nodes : [
	
		new LambdaNode.LambdaNode("something", {
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
		})

	],
	*/
	getRoot : function() {
		
	}
};