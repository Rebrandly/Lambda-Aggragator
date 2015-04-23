NastyGal
http://www.nastygal.com
60
4
1

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("li.nav-item-shop a.subhead").map(function(i, x) { 
		var header = $(x);
		
		var tabName = header.text().trim();
		if (tabName != "Clothes" && tabName != "Shoes") {
			return;
		}

		return (nodes[1])({
			data : header.attr("href"),
			name : tabName
		}); 
	});	
});

----

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
		var header = $(x);
		
		var tabName = header.text().trim();
		if (tabName == "Back In Stock") {
			return;
		}
		
		return (nodes[2])({
			data : url + header.attr("href"),
			name : tabName
		}); 
	});	
});

----

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
		var header = $(x);
		
		return (nodes[3])({
			data : url + header.attr("href") + "?viewAll=true",
			name : header.text().trim()
		}); 
	});	
});

----

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);
	
	var lst = parsedHTML("div.category-products > ul.products-grid > li.item");
	if (lst.length == 0) {
		return [];
	}
	
	var childList =  lst.map(function(i, x) { 
		var item = $(x);
		
		// get name
		var name = item.find("p.thumb-caption-title").text().trim();

		// avoid repeats
		if (!scanEvents.recordID(name)) {
			console.log("detected repeat: " + name);
			return;
		}
		
		// get price
		var pricetag = item.find("div.price-box");
		var newprice = pricetag.find("span.special-price");
		var price = newprice.length > 0 ? $(newprice[0]).text().match(/\d+\.\d+/) : pricetag.text().match(/\d+\.\d+/);
		price = parseFloat(price);

		// link
		var link = item.find("a.thumb-image").attr("href");
		
		return (nodes[3])({
			data : link,
			name : name,
			price : price
		}); 
	});	
	
	if (childList.length == 0) {
		throw {
			message : "Empty due to all children being duplicates"
		};
	}
	
	return childList;
});

----

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	// get image list
	var imagehtml = parsedHTML("#more-views > ul > li > a");
	var i, l=imagehtml.length, imageList=[];
	for(i=0; i<l; i+=1) {
		var item = $(imagehtml[i]);
		imageList.push(item.attr("rel").match(/smallimage: '([^ ]+)'/)[1]);
	}

	// get size list
	var sizeshtml = parsedHTML("ul.size-list-wrapper > li > a");
	var i, l=sizeshtml.length, sizes=[];
	for(i=0; i<l; i+=1) {
		sizes.push($(sizeshtml[i]).attr("rel"));
	}

	// get id
	var id = parsedHTML("span.sku").text().trim();
	
	// get description
	var deschtml = parsedHTML("#tabs-1 > p");
	var i, l=deschtml.length, desclist=[];
	for(i=0; i<l; i+=1) {
		desclist.push($(deschtml[i]).text().trim());
	}
	var desc = desclist.join("<br/>");

	// mark as leaf
	node.addmetadata("leaf", true);
	
	// add data to node metadata
	node.addmetadata("url", input.data);
	node.addmetadata("id", id);
	node.addmetadata("variations", sizes);
	node.addmetadata("price", input.price);
	node.addmetadata("long_desc", desc);
	node.addmetadata("name", input.name);
	node.addmetadata("images", imageList);
	
	return [];
});

----