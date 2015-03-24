// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the http module to create an http server. 
var http = require('http');
// Load the request module to make requests.
var request = require("request");
  
  

/*  
// example duck typing method
var hasMethods = function(obj){ // method list as strings [, ..., ..., ...]
    var i = 1, methodName;
    while((methodName = arguments[i++])){
        if(typeof obj[methodName] != 'function') {
            return false;
        }
    }
    return true;
}

// in your code
if(hasMethods(obj, 'quak', 'flapWings','waggle')) {
    //  IT'S A DUCK, do your duck thang
}
*/

  
var siteCallback;
var downloadCount;
var maxDownloadCount;
var curSiteStack;

function RoundRobin(root) {

	// get sites and the number of them
	var sites = root.getSites();
	
	// set it's children, but don't make children remember the parent
	root.setChildren(sites);

	// if there are any sites
	if (sites.length > 0) {
		// initiate round robin on site at index 0
		RoundRobinCallLoop(sites, 0);
	}
}
function RoundRobinCallLoop(sites, i) {

	// get current site
	var site = sites[i];

	// check if finished
	if (site.isFinished()) {
		// remove site from list
		sites.splice(i, 1);

		// continue if any sites left
		if (sites.length > 0) {
			RoundRobinCallLoop(sites, i % sites.length);
		}
	} else {
		// set the callback function to search the next site
		siteCallback = function() {
			RoundRobinCallLoop(sites, (i + 1) % sites.length);
		};

		// reset the download count
		downloadCount = 0;
		// set the max donwload count
		maxDownloadCount = site.getMaxRequests();
		// get the current stack of callbacks
		curSiteStack = site.getStack();
		// search the site
		SearchSite(site);
	}
}
function SearchSite(node) {

	// check if you can make any more requests for the site
	if (downloadCount < maxDownloadCount) {

		// increment the count by one
		downloadCount += 1;

		// download the data
		node.downloadData(function(children) {

			// print something
			node.print();

			// set children
			node.setChildren(children);

			// check if there are any child nodes
			if (children.length > 0) {

				// get the first child
				var child = children[0];

				// set parent of the child
				child.setParent(node);

				// if not a site
				if (node.hasParent()) {

					// get parent of node
					var parent = node.getParent();
					// get node's sibling list including itself
					var mysiblings = parent.getChildren();
					// find index of itself in that list
					var myIndex = mysiblings.indexOf(node);
					// get index of sibline to the right
					var siblingIndex = myIndex + 1;
					
					// check if next child node exists
					if (siblingIndex < mysiblings.length) {
						// get sibling
						var sibling = mysiblings[siblingIndex];

						// stack the function to call when all children of node finish, to continue to sibling of node
						curSiteStack.push(function() {    
							SearchSite(sibling);
						});	
					}
				}

				// search the child
				SearchSite(child);

			} else if (curSiteStack.length > 0) {
				// move up to parent sibling
				(curSiteStack.pop())();
			} else {
				// change site because this whole site is done
				siteCallback();
			}
		}, function() {             
			// mark as http error
			node.reportHTTPError();
		}, function() {      
		    // mark as parse error
			node.reportParseError();
		});
	} else {
		// reached limit so change site
		siteCallback();
	}
}





var node = function(n) {

	var name = n;
	var parent = null;
	var children = null;
	var finished = false;
	
	var stack = [];
	var maxRequests = 10;

	this.downloadData = function(func) {
		var children = [];
		func(children);
	};
	this.getMaxRequests = function() {
		return maxRequests;
	};
	this.getStack = function() {
		return stack;
	};
	this.isFinished = function() {
		return children != null;
	};
	this.hasParent = function() {
		return parent != null;
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
	this.setChildren = function(c) {
		children = c;
	};
	this.print = function() {
		var div = $("div.test");
		div.append(name);
	};
};


var siteA = new node("A");
var siteB = new node("B");
var siteC = new node("C");


var root = new function() {
	var children = null;
	this.getSites = function() {
		return [siteA, siteB, siteC];
	};
	this.getChildren = function() {
		return children;
	};
	this.setChildren = function(c) {
		children = c;
	};
};

RoundRobin(root);



function dfs(res, v, tab) {
	res.write(tab + v["val"] + "<br/>");
	var l = v.getChildren().length;
	for(var i=0; i<l; i+=1) {
		dfs(res, (v.getChildren())[i], tab + "----");
	}
}



// Configure our HTTP server to respond to all requests.
var server = http.createServer(function (req, res) {
	
	// respond type, for now it only gives back plain text
	res.writeHead(200, {"Content-Type": "text/html"});

	dfs(res, root, "");
	
	res.end();
});

// Listen on port 8000, IP defaults to 127.0.0.1
server.listen(8000);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");