module.exports = function(n, i, di, pi) {

	var name = n;               // name of node
	var input = i;              // input object
	var generateRawFunc = di;   // function to handle getting data from input
	var processRawFunc = pi;    // function to handle processing data from input
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
	
	this.finished = function() {
		return finished;
	};
	
	this.failed = function() {
		return failed;
	};
	
	this.getChildren = function() {
		return children;
	};
	
	this.downloadData = function(scanEvents) {
		var raw_data = generateRawFunc(input, processRawFunc, scanEvents, node);
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
	
	this.toJSON = function() {
		return {
			name : name,
			children : children,
			finished : finished,
			failed : failed
		};
	};
};