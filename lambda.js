var siteCallback;

var downloadCount;
var maxDownloadCount;
var curSiteStack;

function RoundRobin(root) {

	// get sites and the number of them
	var sites = root.getSites();

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

var site = function() {
	var stack = [];
	var maxRequests = 10;
}

var siteA = new site("A");
var siteB = new site("B");
var siteC = new site("C");


var root = new function() {
	this.getSites = function() {
		return [siteA, siteB, siteC];
	};
};

RoundRobin(root);