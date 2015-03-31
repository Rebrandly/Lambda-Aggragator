// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the request module to make requests.
var request = require("request");
// Load my custom node object
var LambdaNode = require('../module/LambdaNode.js');
// Load my custom node object
var common = require('../common/common.js');

module.exports = new function() {
	
	var url = "http://www.forever21.com";
	
	this.getRootNode = function() {
		return (nodes[0])({
			data : url
		});
	};
	
	var nodes = [
		function(input) {
			return new LambdaNode("Forever21 site root", function(scanEvents, node) {
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
						var childList = parsedHTML("head > link[rel=canonical],[rel=alternate]").map(function(i, x) { 
							return (nodes[1])({
								data : $(x).attr("href")
							}); 
						});
					} catch (err) {
						node.parseError(scanEvents, {
							message : err.message
						});
						return console.log(err.message);
					}
						
					// submit data
					node.finished(scanEvents, childList);
				});	
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site country", function(scanEvents, node) {
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
						/*
						var parsedHTML = $.load(body);
						var childList = parsedHTML("head > link[rel=canonical],[rel=alternate]").map(function(i, x) { 
							return (nodes[2])({
								data : $(x).attr("href")
							}); 
						});
						*/
						var childList = [];
					} catch (err) {
						node.parseError(scanEvents, {
							message : err.message
						});
						return console.log(err.message);
					}
						
					// submit data
					node.finished(scanEvents, childList);
				});	
			});
		}
	];
};