/*!
 * Lambda Aggregator v0.0.2
 * http://lambdaaggregation.com/
 *
 * Developers: Ryan Steve D'Souza
 * http://www.linkedin.com/profile/view?id=282676120
 *
 * Copyright 2015
 *
 * Date: 2015
 */

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