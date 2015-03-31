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
					var childList = parsedHTML("head > link[rel=canonical],[rel=alternate]").map(function(i, x) { 
						return (nodes[1])({
							data : $(x).attr("href")
						}); 
					});	
					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site country", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					var childList = parsedHTML("#divNav .columns a").map(function(i, x) { 
						return (nodes[2])({
							data : $(x).attr("href")
						}); 
					});
					return childList;
				});
			});
		},
		function(input) {
			return new LambdaNode("Forever21 site upper category", input, function(input, scanEvents, node) {
				node.downloadTemplate(input, scanEvents, function(body) {
					var parsedHTML = $.load(body);
					var childList = parsedHTML("#divNav .columns a").map(function(i, x) { 
						return (nodes[3])({
							data : $(x).attr("href")
						}); 
					});
					
					//var childList = parsedHTML("#divNav .columns a").each(function(i, x) { 
					//	console.log($(x).attr("href"));
					//});
					
					//common.writeData("test/code", input.data + "\n\n\n\n" + body);
					
					//var childList = [];
					
					return childList;
				});
			});
		}
	];
};