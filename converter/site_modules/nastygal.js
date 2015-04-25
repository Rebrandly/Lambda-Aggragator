NastyGal
http://www.nastygal.com
60
4
1

node.directTemplate(input, scanEvents, function(input) {
	return [(nodes[1])({
		data : input.data,
		name : "Women"
	})]; 
});

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("li.nav-item-shop a.subhead").map(function(i, x) { 
		var header = $(x);
		
		var tabName = header.text().trim();
		if (tabName != "Clothes" && tabName != "Shoes") {
			return;
		}

		return (nodes[2])({
			data : header.attr("href"),
			name : tabName
		}); 
	});	
});

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
		var header = $(x);
		
		var tabName = header.text().trim();
		if (tabName == "Back In Stock") {
			return;
		}
		
		return (nodes[3])({
			data : url + header.attr("href"),
			name : tabName
		}); 
	});	
});

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	return parsedHTML("div.category-filter div.sidebar-nav-section li.selector > a").map(function(i, x) { 
		var header = $(x);
		
		return (nodes[4])({
			data : url + header.attr("href") + "?viewAll=true",
			name : header.text().trim()
		}); 
	});	
});

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);
	
	var lst = parsedHTML("div.product-list-item");
	if (lst.length == 0) {
		return [];
	}
	
	var childList =  lst.map(function(i, x) { 
		var item = $(x);
		
		// get id
		var id = item.attr("data-product-id");

		// avoid repeats
		if (!scanEvents.recordID(id)) {
			console.log("detected repeat: " + id);
			return;
		}
		
		if (i > 0) return;
		
		// get name
		var name = item.find("div.product-name").text().trim();

		
		// get price
		var pricetag = item.find("div.product-price");
		var newpricetag = pricetag.find("span.current-price");
		var originalpricetag = pricetag.find("span.original-price");
		var current_price = parseFloat(newpricetag.text().match(/\d+\.\d+/));
		var original_price = originalpricetag.length == 0 ? current_price : parseFloat(originalpricetag.text().match(/\d+\.\d+/));

		// link
		var link = item.find("a.product-link").attr("href");
		
		return (nodes[5])({
			data : link,
			id : id,
			name : name,
			current_price : current_price,
			original_price : original_price
		}); 
	});	
	
	if (childList.length == 0) {
		throw {
			message : "Empty due to all children being duplicates"
		};
	}
	
	return childList;
});

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);

	// get image list
	var imagehtml = parsedHTML("#product-images-carousel li.carousel-item img");
	var i, l=imagehtml.length, imageList=[];
	for(i=0; i<l; i+=1) {
		var item = $(imagehtml[i]);
		imageList.push(item.attr("src"));
	}
	
	// get size list
	var sizeshtml = parsedHTML("div.product-sizes div.radio label.sku-label");
	var i, l=sizeshtml.length, sizes=[];
	for(i=0; i<l; i+=1) {
		var stock_min = $(sizeshtml[i]).attr("data-availableinventory");
		var stock_max = stock_min;
		var hasMore = false;
		
		if (stock_min == "low") {
			stock_min = 1;
			stock_max = 5;
		} else if (stock_min == "normal") {
			stock_min = 6;
			stock_max = 6;
			hasMore = true;
		} else {
			stock_min = parseInt(stock_min, 10);
			stock_max = stock_min;
		}
		
		sizes.push({
			size : $(sizeshtml[i]).text().trim(),
			stock_min : stock_min,
			stock_max : stock_min,
			hasMore : hasMore
		});
	}

	// get description
	var deschtml = parsedHTML("div.product-description p");
	var i, l=deschtml.length, desclist=[];
	for(i=0; i<l; i+=1) {
		desclist.push($(deschtml[i]).text().trim());
	}
	var desc = desclist.join("<br/>");

	// mark as leaf
	node.addmetadata("leaf", true);
	
	// add data to node metadata
	node.addmetadata("url", input.data);
	node.addmetadata("id", input.id);
	node.addmetadata("current_price", input.current_price);
	node.addmetadata("original_price", input.original_price);
	node.addmetadata("long_desc", desc);
	node.addmetadata("variations", [
		{ 
			image_links: imageList,
			sizes : sizes
		}
	]);
	
	return [];
});