module.exports = {
	
	LambdaNode : function(n, i, di, pi) {

		var name = n;               // name of node
		var input = i;              // input object
		var generateRawFunc = di;   // function to handle getting data from input
		var processRawFunc = pi;    // function to handle processing data from input
		
		var children = [];
		var finished = false;
		var failed = false;
		var node = this;
		
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
	}
};