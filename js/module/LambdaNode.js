/*
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

module.exports = function(name, input, generateRawFunc) {

	var loopChild = -1;         // the index of the child node that needs to be searched
	var parent = null;          // parent of the node
	var children = [];          // the children array
	var node = this;            // reference to itself
	var finished = false;       // state of finished
	var failed = false;         // state of error
	var metadata = {};          // extra metadata
	
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

	this.getParent = function() {
		return parent;
	};
	
	this.setParent = function(p) {
		parent = p;
	};
	
	this.getChildren = function() {
		return children;
	};
	
	this.removeChild = function(child) {
		var ind = children.indexOf(child);
		if (ind != -1) {
			children.splice(ind, 1);
		}		
	};
	
	this.addmetadata = function(key, val) {
		metadata[key] = val;
	}
	
	this.isLeaf = function() {
		return metadata.hasOwnProperty("leaf");
	};
	
	this.markUnLeaf = function() {
		delete metadata["leaf"];
	};
	
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

		scanEvents.finished(node, childList);
	};
	
	this.httpError = function(scanEvents) {
		failed = true;
		scanEvents.httpError(node);
	};
	
	this.parseError = function(scanEvents) {
		failed = true;
		scanEvents.parseError(node);
	};
	
	this.emptyError = function(scanEvents) {
		failed = true;
		scanEvents.emptyError(node);
	};
	
	this.downloadTemplate = function(input, scanEvents, func) {
		request({
			uri: input.data
		}, function(error, response, body) {
			if (error) {
				node.addmetadata("error", error);
				node.httpError(scanEvents);
				return console.log(error);
			}
			
			templaceFinisher(body, scanEvents, func);
		});
	};

	this.directTemplate = function(input, scanEvents, func) {
		templaceFinisher(input, scanEvents, func);
	};
	
	var templaceFinisher = function(input, scanEvents, func) {
		try {
			var childList = func(input);
		} catch (err) {
			node.addmetadata("error", err.message);
			node.parseError(scanEvents);
			return console.log(err.message);
		}
		
		if (childList.length == 0 && !node.isLeaf()) {
			var msg = "Empty children list";
			node.addmetadata("error", msg);
			node.emptyError(scanEvents);
			return console.log(msg);
		}

		node.finished(scanEvents, childList);
	};
	
	this.toJSON = function() {
		var obj = {
			name : name,
			children : children
		};
		
		if (Object.keys(metadata).length > 0) {
			obj.metadata = metadata;
		}
		
		return obj;
	};
};