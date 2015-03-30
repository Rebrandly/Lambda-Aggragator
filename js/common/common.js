// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');

module.exports = new function() {
	
	var getRootNode = function(nodes, depth, url) {
		var nodeData = nodes[depth];
		
		return new LambdaNode(nodeData.name, {
			data : url
		}, nodeData.getChildren);
	};
	
	this.getNode = function(nodes, depth, input, url) {
		if (depth >= nodes.length) {
			console.log("Site '" + url + "' does not support depth level '" + depth + "'!");
			return null;
		}
		
		if (depth == 0) {
			return getRootNode(nodes, depth, url);
		}
		
		var nodeData = nodes[depth];
		
		return new LambdaNode(nodeData.name, input, nodeData.getChildren);
	};
};