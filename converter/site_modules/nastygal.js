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

node.downloadTemplate(input, scanEvents, function(body) {
	var parsedHTML = $.load(body);
	
	var lst = parsedHTML("div.product-list-item");
	if (lst.length == 0) {
		return [];
	}
	
	var childList =  lst.map(function(i, x) { 
		var item = $(x);
		
		// get name
		var name = item.find("div.product-name").text().trim();

		// get id
		var id = item.attr("data-product-id");

		// avoid repeats
		if (!scanEvents.recordID(id)) {
			console.log("detected repeat: " + id);
			return;
		}
		
		// get price
		var pricetag = item.find("div.product-price");
		var newprice = pricetag.find("span.current-price.sale");
		var price = newprice.length > 0 ? newprice.text().match(/\d+\.\d+/) : pricetag.text().match(/\d+\.\d+/);
		price = parseFloat(price);

		// link
		var link = item.find("a.product-link").attr("href");
		
		return (nodes[4])({
			data : link,
			id : id,
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
		var stock = $(sizeshtml[i]).attr("data-availableinventory");
		if (stock == "low") stock = "1-5";
		else if (stock == "normal") stock = "6+";
		
		sizes.push({
			size : $(sizeshtml[i]).text().trim(),
			stock : stock
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
	node.addmetadata("variations", sizes);
	node.addmetadata("price", input.price);
	node.addmetadata("long_desc", desc);
	node.addmetadata("name", input.name);
	node.addmetadata("images", imageList);
	
	return [];
});