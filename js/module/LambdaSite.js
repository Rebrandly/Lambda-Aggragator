/*
 * Lambda Site
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

module.exports = function(name, url, maxvisitAJAX, concurrentAjaxCalls, nodes) {
	
	this.getURL = function() {
		return url;
	};
	
	this.getmaxvisitAJAX = function() {
		return maxvisitAJAX;
	};
	
	this.getconcurrentAjaxCalls = function() {
		return concurrentAjaxCalls;
	};
	
	this.getRootNode = function() {
		return (nodes[0])({
			data : url,
			name : name
		});
	};
};