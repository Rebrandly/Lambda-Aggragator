/*
 * Lambda Node
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
	
	this.hasStartedLooping = function() {
		return loopChild >= 0;
	};
	
	this.getloopChild = function() {
		return loopChild;
	};
	
	this.setloopChild = function(index) {
		loopChild = index;
	};
	
	this.doneDownload = function() {
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

	this.downloadData = function(scanEvents) {
		generateRawFunc(input, scanEvents, node);
	};
	
	this.finished = function(scanEvents, childList) {
		finished = true;
		
		// set child data
		Array.prototype.push.apply(children, childList);
		// set parent data
		var i, l=children.length;
		for(i=0; i<l; i+=1) {
			(children[i]).setParent(node);
		}
		// clear list
		childList.length = 0;
		
		scanEvents.finished(node);
	};
	
	this.error = function(scanEvents) {
		failed = true;
		
		scanEvents.error();
	};
	
	////////////////////////////////////////////////////////////////////
	// this part downloads the data
	////////////////////////////////////////////////////////////////////
	this.downloadTemplate = function(input, scanEvents, func) {
		request({
			uri: input.data
		}, function(error, response, body) {
			if (error) {
				node.addmetadata("error", error);
				node.error(scanEvents);
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
			node.error(scanEvents);
			return console.log(err.message);
		}
		
		if (node.hasOwnProperty("leaf")) {
			delete node["leaf"];
		} else if (childList.length == 0) {
			var err = "No children";
			node.addmetadata("error", err);
			node.error(scanEvents);
			return console.log(err);
		}

		node.finished(scanEvents, childList);
	};
	////////////////////////////////////////////////////////////////////
	
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