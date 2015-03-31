// Load the request module to make requests.
var request = require("request");

module.exports = function(n, di) {

	var name = n;               // name of node
	var generateRawFunc = di;   // function to handle getting data from input
	var loopChild = -1;         // the index of the child node that needs to be searched
	var children = [];          // the children array
	var node = this;            // reference to itself
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
	
	this.getChildren = function() {
		return children;
	};
	
	this.downloadData = function(scanEvents) {
		var raw_data = generateRawFunc(scanEvents, node);
	};
	
	this.finished = function(scanEvents, childList) {
		finished = true;
		Array.prototype.push.apply(children, childList);
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
	
	this.downloadTemplate = function(input, scanEvents, func) {
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
				var childList = func(body);
			} catch (err) {
				node.parseError(scanEvents, {
					message : err.message
				});
				return console.log(err.message);
			}
			
			if (childList.length == 0) {
				var msg = "Empty children list";
				node.parseError(scanEvents, {
					message : msg
				});
				return console.log(msg);
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
			failed : failed
		};
	};
};