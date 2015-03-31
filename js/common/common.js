// Load file writer
var fs = require('fs');

module.exports = new function() {
	
	this.writeData = function(filename, str) {
		fs.writeFile(filename, str, function(err) {
			if(err) {
				return console.log(err);
			}
			console.log("The file was saved!");
		}); 
	};
};