// Load the cheerio module to parse html responses.
var $ = require('cheerio');
// Load the http module to create an http server. 
var http = require('http');
// Load the request module to make requests.
var request = require("request");
  
// Configure our HTTP server to respond to all requests.
var server = http.createServer(function (req, res) {
	
	// respond type, for now it only gives back plain text
	res.writeHead(200, {"Content-Type": "text/plain"});
  
	// starting URL
	var uri = "http://www.forever21.com/shop/ca/en/men-tees-tanks";
	res.write("Using url:\n" + uri + "\n\n");
  
	// download the URL
	request({
		uri: uri
	}, function(error, response, body) {
		
		// handle error
		if (error) {
			console.error(error);
			res.end();
			return;
		}
	
		// parse the string into an object
		var parsedHTML = $.load(body);
		// look up the product boxes
		var items = parsedHTML("div.product.square_product");

		// for each product
		items.map(function(i, item) {
			
			// only do the first item for now lol
			if (i > 0) {
				return;
			}
			
			// get item id
			var id = $(item).find('> div').eq(0).attr("id").match(/\d+/)[0];
			res.write("Found item with id:\n" + id + "\n\n");

			// get link to product link
			var anchor = $(item).find('a').eq(0);
			var onclick = anchor.attr("onclick");
			var link = onclick.match(/'([^,]+)'/)[1]; 
			res.write("Item url is:\n" + link + "\n\n");

			
			// download the product page
			request({
				uri: link
			}, function(error, response, body) {
				
				// handle error
				if (error) {
					console.error(error);
					res.end();
					return;
				}
				
				// parse the string into an object 
				var innerPage = $.load(body);
				// find the snippet which gives info on other products
				var container = innerPage("#entitledItem_" + id);
				var encodedjson = container.html();
				// decode the text fixing html entities
				var json = $('<div/>').html(encodedjson).text();
				// convert it into object
				var obj = JSON.parse(json);
				// get special ID
				var itemsizeid = (obj[0])["catentry_id"];
				res.write("Found all size and color variations for this product:\n" + JSON.stringify(obj) + "\n\n");

				// download the JSON info about the product giving some information
				request({
					uri: "http://www.forever21.com/webapp/wcs/stores/servlet/GetCatalogEntryDetailsByIDView?storeId=10701&catalogId=10601&langId=-1001&catalogEntryId="+itemsizeid+"&prodCounter=1"
				}, function(error, response, body) {
					
					// handle error
					if (error) {
						console.error(error);
						res.end();
						return;
					}

					// result is json object but with some weird wrapping text, this removes that stuff
					var encodedjson = body.match(/({(.|\s)*})/)[0];
					// decode the text fixing html entities
					var json = $('<div/>').html(encodedjson).text();
					// convert it into object
					var obj = JSON.parse(encodedjson);
					res.write("Item info part 1:\n" + JSON.stringify(obj) + "\n\n");
					
					
					// download the JSON info about the product giving some other information
					request({
						uri: "http://www.forever21.com/webapp/wcs/stores/servlet/GetInventoryStatusByIDView?storeId=10701&itemId_1=" + itemsizeid
					}, function(error, response, body) {
						
						// handle error
						if (error) {
							console.error(error);
							res.end();
							return;
						}
					
						// result is json object but with some weird wrapping text, this removes that stuff
						var encodedjson = body.match(/({(.|\s)*})/)[0];
						// decode the text fixing html entities
						var json = $('<div/>').html(encodedjson).text();
						res.write("Item info part 2:\n" + json + "\n\n");
						
						// end the request
						res.end();
					});	
				});	
			});	
		});
	});
});


// Listen on port 8000, IP defaults to 127.0.0.1
server.listen(8000);

// Put a friendly message on the terminal
console.log("Server running at http://127.0.0.1:8000/");