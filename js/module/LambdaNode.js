/*!
 * Lambda Node
 * http://lambdaaggregation.com/
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

// Load the request module to make requests.
var request = require("request");

module.exports = function(n, i, di) {

	var name = n;               // name of node
	var input = i;              // input
	var generateRawFunc = di;   // function to handle getting data from input
	var loopChild = -1;         // the index of the child node that needs to be searched
	var parent = null;          // parent of the node
	var children = [];          // the children array
	var node = this;            // reference to itself
	var metadata = {};          // extra metadata
	var finished = false;       // state of finished
	var failed = false;         // state of error
	
	this.getName = function() {
		return name;
	};
	
	this.getloopChild = function() {
		return loopChild;
	};
	
	this.setloopChild = function(q) {
		loopChild = q;
	};
	
	this.done = function() {
		return finished;
	};
	
	this.failed = function() {
		return failed;
	};
	
	this.setParent = function(p) {
		parent = p;
	};
	
	this.getChildren = function() {
		return children;
	};
	
	this.gettmetadata = function() {
		return metadata;
	}
	
	this.addmetadata = function(key, val) {
		metadata[key] = val;
	}
	
	this.downloadData = function(scanEvents) {
		generateRawFunc(input, scanEvents, node);
	};
	
	this.finished = function(scanEvents, childList) {
		finished = true;
		
		// set child data
		Array.prototype.push.apply(children, childList);
		
		// set parent data
		var i, l=childList.length;
		for(i=0; i<l; i+=1) {
			(childList[i]).setParent(node);
		}
		
		scanEvents.finished(childList);
	};
	
	this.httpError = function(scanEvents, data) {
		failed = true;
		scanEvents.httpError(data);
	};
	
	this.parseError = function(scanEvents, data) {
		failed = true;
		scanEvents.parseError(data);
	};
	
	this.emptyError = function(scanEvents, data) {
		failed = true;
		scanEvents.emptyError(data);
	};
	
	this.downloadTemplate = function(input, scanEvents, func) {
		// obtain raw data
		request({
			uri: input.data
		}, function(error, response, body) {
			if (error) {
				node.addmetadata("error", error);
				node.httpError(scanEvents, {
					message : error
				});
				return console.log(error);
			}
			
			try {
				// obtain child node data
				var childList = func(body);
			} catch (err) {
				node.addmetadata("error", err.message);
				node.parseError(scanEvents, {
					message : err.message
				});
				return console.log(err.message);
			}
			
			if (childList.length == 0 && !node.gettmetadata().hasOwnProperty("leaf")) {
				var msg = "Empty children list";
				node.addmetadata("error", msg);
				node.emptyError(scanEvents, {
					message : msg
				});
				return;
			}

			// submit data
			node.finished(scanEvents, childList);
		});	
	};
	
	this.toJSON = function() {
		return {
			name : name,
			children : children,
			finished : finished,
			failed : failed,
			metadata : metadata
		};
	};
};