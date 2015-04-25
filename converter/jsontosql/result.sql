INSERT INTO human_demographic (id, name)
VALUES (1, 'Women');


INSERT INTO category (id, name)
VALUES (1, 'Dresses');


INSERT INTO country (id, country)
VALUES (1, 'California');


INSERT INTO city (id, city, country_id)
VALUES (1, 'Los Angeles', 1);


INSERT INTO retailer (id, name, homepage_link, city_id)
VALUES (1, 'NastyGal', 'http://www.nastygal.com', 1);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (1, '57285', 1, 1, 'Maurie & Eve Lorenza Dress', 'Business class? More like business sass. The Lorenza Dress from Maurie & Eve is a white poplin shirt dress and features navy bandeau layer with pleating, functional front button closure, gathering detail, and sculpted hemline. Side zip closure, unlined. Perfect with platforms and a crossbody.   *Cotton/Polyester<br/>*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-dresses-day/maurie--eve-lorenza-dress', 209.37, 209.37, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (1, 1, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (1, 1, '//i.ngimg.com/resources/nastygal/images/products/processed/57285.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (2, 1, '//i.ngimg.com/resources/nastygal/images/products/processed/57285.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (3, 1, '//i.ngimg.com/resources/nastygal/images/products/processed/57285.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (4, 1, '//i.ngimg.com/resources/nastygal/images/products/processed/57285.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (1, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (1, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (1, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (1, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (1, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (1, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (1, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (1, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (2, '57461', 1, 1, 'Midnight Walk Lace Dress', 'If looking drop dead amazing is your thing, you''re probably going to need this dress. It features a black lace shell with partial lavender lining, beaded detailing at mock neck, cutout at back, and zip/hook closures. FItted waist, slit at front. Perfect with black pumps and a lucite box clutch.<br/>*Polyester/Nylon/Cotton
*Runs true to size
*Model is wearing size small
*Dry clean
*Imported', 'http://www.nastygal.com/clothes-dresses-going-out/midnight-walk-lace-dress', 119.29, 119.29, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (2, 2, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (5, 2, '//i.ngimg.com/resources/nastygal/images/products/processed/57461.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (6, 2, '//i.ngimg.com/resources/nastygal/images/products/processed/57461.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (7, 2, '//i.ngimg.com/resources/nastygal/images/products/processed/57461.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (8, 2, '//i.ngimg.com/resources/nastygal/images/products/processed/57461.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (2, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (2, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (2, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (2, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (2, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (2, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (3, '57183', 1, 1, 'All Tied Down Maxi Dress', 'Get tied up in the cutest way possible. This black maxi dress feature lace-up detailing at front, an adjustable tie closure at back, and a loose silhouette. Partially lined. Perfect with platforms and statement earrings or slide sandals and tons of bangles--do you, girl.<br/>*Rayon/Polynosic
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-dresses-midi-maxi/all-tied-down-maxi-dress', 82.77, 82.77, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (3, 3, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (9, 3, '//i.ngimg.com/resources/nastygal/images/products/processed/57183.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (10, 3, '//i.ngimg.com/resources/nastygal/images/products/processed/57183.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (11, 3, '//i.ngimg.com/resources/nastygal/images/products/processed/57183.2.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (3, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (3, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (3, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (3, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (3, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (3, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (4, '55380', 1, 1, 'Dress the Population Scarlet Sequin Dress', 'You have dance floors to do and babes to do them with--you''re gonna need a dress that kills it. The Scarlet Dress has a nude mesh shell with white embroidery and sequin design, nude crepe underlay and waistband, and cut away neckline Scalloped lace trim at hem, pleat detail, and open back. Back zip and button closure. We love it with strappy heels, a rosy pout, and the time of your life. By Dress the Population.<br/>*Polyester
*Runs true to size
*Model is wearing size x-small
*Dry clean
*Made in U.S.A.', 'http://www.nastygal.com/clothes-dresses-fit-n-flare/dress-the-population-scarlet-sequin-dress', 265.36, 265.36, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (4, 4, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (12, 4, '//i.ngimg.com/resources/nastygal/images/products/processed/55380.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (13, 4, '//i.ngimg.com/resources/nastygal/images/products/processed/55380.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (14, 4, '//i.ngimg.com/resources/nastygal/images/products/processed/55380.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (15, 4, '//i.ngimg.com/resources/nastygal/images/products/processed/55380.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (4, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (4, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (4, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (4, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (4, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (4, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (4, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (4, 1, 1, False);


INSERT INTO category (id, name)
VALUES (2, 'Tops');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (5, '56958', 1, 2, 'Scenic Route Smocked Crop Top', 'Hit the road; take the Scenic Route. The Scenic Route Crop Top is black and features muti-colored smocking, off-the-shoulder design, and cap sleeves. Unlined. Killer with high waisted cutoffs and ankle boots, or a tiered skirt and gladiators.      *Rayon<br/>*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-tops-cropped/scenic-route-smocked-crop-top', 46.26, 46.26, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (5, 5, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (16, 5, '//i.ngimg.com/resources/nastygal/images/products/processed/56958.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (17, 5, '//i.ngimg.com/resources/nastygal/images/products/processed/56958.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (18, 5, '//i.ngimg.com/resources/nastygal/images/products/processed/56958.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (19, 5, '//i.ngimg.com/resources/nastygal/images/products/processed/56958.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (5, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (5, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (5, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (5, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (5, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (5, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (6, '56913', 1, 2, 'One Take Lace Bodysuit', 'Suit up in this white bodysuit featuring lace at back, button/tie closures at front, and snap button closures at bottom. Mesh thong bottom, unlined. Perfect with your favorite leather skirt or go-to skinnies.<br/>*Polyester
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes_tops_bustiers-bodysuits/one-take-lace-bodysuit', 70.60, 70.60, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (6, 6, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (20, 6, '//i.ngimg.com/resources/nastygal/images/products/processed/56913.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (21, 6, '//i.ngimg.com/resources/nastygal/images/products/processed/56913.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (22, 6, '//i.ngimg.com/resources/nastygal/images/products/processed/56913.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (23, 6, '//i.ngimg.com/resources/nastygal/images/products/processed/56913.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (6, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (6, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (6, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (6, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (6, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (6, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (7, '56952', 1, 2, 'Highway Star Crossover Knit Halter Top', 'Your tank''s full, and your tank game''s fly--summer can start. The Highway Star Top is made in a white knit and features halter silhouette, crossover design bodice, bubble design, and deep elasticized scoop at back. Adjustable neck tie, high/low silhouette, and plunging neckline. Killer with distressed cutoffs and the open road.<br/>*Polyester/Cotton
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-tops-tanks/highway-star-crossover-knit-halter-top', 46.26, 46.26, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (7, 7, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (24, 7, '//i.ngimg.com/resources/nastygal/images/products/processed/56952.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (25, 7, '//i.ngimg.com/resources/nastygal/images/products/processed/56952.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (26, 7, '//i.ngimg.com/resources/nastygal/images/products/processed/56952.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (27, 7, '//i.ngimg.com/resources/nastygal/images/products/processed/56952.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (7, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (7, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (7, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (7, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (7, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (7, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (8, '56911', 1, 2, 'Mirage Lace Top', 'Desert bound? You''re gonna want this baby. The Mirage Top is made in sheer black lace and features scoop neck, scalloped hem, and back slit detail. Killer over cutoffs, but we also love it with shredded straight-cut denim and strappy heels.   *Polyester<br/>*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-tops-shirts-blouses/mirage-lace-top', 63.30, 63.30, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (8, 8, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (28, 8, '//i.ngimg.com/resources/nastygal/images/products/processed/56911.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (29, 8, '//i.ngimg.com/resources/nastygal/images/products/processed/56911.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (30, 8, '//i.ngimg.com/resources/nastygal/images/products/processed/56911.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (31, 8, '//i.ngimg.com/resources/nastygal/images/products/processed/56911.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (8, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (8, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (8, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (8, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (8, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (8, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (9, '53729', 1, 2, 'Nasty Gal x Petals and Peacocks Best Babes Tank Set', 'We got you, babe. And your bestie. The Best Babes Tank Set is a Nasty Gal exclusive, so just consider it our little Valentine''s Day gift to you. It''s made in semi sheer off-white cotton and features distressing at neck and hem, muscle-tank silhouette, and pink screen-printing at front. Team it up with cutoffs, skinnies, and your one-and-only BFF. By Nasty Gal x Petals and Peacocks. (Note: Sold as a set of two. Each must come in the same size.)*Cotton<br/>*Runs true to size
*Model is wearing smallest size available
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-tops-graphics/nasty-gal-x-petals-and-peacocks-best-babes-tank-set', 70.60, 70.60, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (9, 9, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (32, 9, '//i.ngimg.com/resources/nastygal/images/products/processed/53729.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (33, 9, '//i.ngimg.com/resources/nastygal/images/products/processed/53729.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (34, 9, '//i.ngimg.com/resources/nastygal/images/products/processed/53729.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (35, 9, '//i.ngimg.com/resources/nastygal/images/products/processed/53729.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (9, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (9, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (9, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (9, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (9, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (9, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (9, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (9, 6, 6, True);


INSERT INTO category (id, name)
VALUES (3, 'Sweaters');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (10, '55647', 1, 3, 'Lizette Cocoon Cardigan', 'Perfect the art of layering in the Lizette Cardigan. It''s made in a black semi loose knit and features pleat detailing at shoulders, open front, and cocoon silhouette. We love it with skinnies, rompers, and minis. In other words: everything.*Polyester/Flax/Spandex<br/>*Runs true to size
*Model is wearing size small
*Dry clean
*Made in U.S.A.', 'http://www.nastygal.com/clothes-sweaters-cardigans/lizette-cocoon-cardigan', 70.60, 70.60, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (10, 10, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (36, 10, '//i.ngimg.com/resources/nastygal/images/products/processed/55647.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (37, 10, '//i.ngimg.com/resources/nastygal/images/products/processed/55647.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (38, 10, '//i.ngimg.com/resources/nastygal/images/products/processed/55647.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (39, 10, '//i.ngimg.com/resources/nastygal/images/products/processed/55647.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (10, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (10, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (10, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (10, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (10, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (10, 4, 4, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (11, '54388', 1, 3, 'Nasty Gal Short Notice Crop Sweater', 'Time to meet us in the middle. This vintage white sweater has textured fabric, small cutouts at front, and ribbing hem, cuffs, and neck. Stretch fabric, unlined. Perfect with high-waisted skinnies, your favorite pencil skirt, or vintage cutoffs--this baby goes with just about everything. By Nasty Gal.<br/>*Viscose/Spandex
*Runs true to size
*Model is wearing smallest size available
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-sweaters-cropped/nasty-gal-short-notice-crop-sweater', 82.77, 57.94, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (11, 11, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (40, 11, '//i.ngimg.com/resources/nastygal/images/products/processed/54388.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (41, 11, '//i.ngimg.com/resources/nastygal/images/products/processed/54388.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (42, 11, '//i.ngimg.com/resources/nastygal/images/products/processed/54388.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (43, 11, '//i.ngimg.com/resources/nastygal/images/products/processed/54388.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'XXS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (11, 'XL');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (11, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (12, '56903', 1, 3, 'Out Cold Cutout Sweater', 'Give them the cold shoulder in the hottest way possible. This loose white knit sweater features cutouts at shoulders, a loose knit, and ribbing at scoop neckline, cuffs, and hem. Unlined. Perfect with a lace bralette and high-waisted skinnies.<br/>*Cotton/Acrylic
*Runs true to size
*Model is wearing size small/medium
*Dry clean
*Imported', 'http://www.nastygal.com/clothes-sweaters-pullover/out-cold-cutout-sweater-', 70.60, 70.60, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (12, 12, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (44, 12, '//i.ngimg.com/resources/nastygal/images/products/processed/56903.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (45, 12, '//i.ngimg.com/resources/nastygal/images/products/processed/56903.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (46, 12, '//i.ngimg.com/resources/nastygal/images/products/processed/56903.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (47, 12, '//i.ngimg.com/resources/nastygal/images/products/processed/56903.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (12, 'S/M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (12, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (12, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (12, 1, 1, False);


INSERT INTO category (id, name)
VALUES (4, 'Jackets + Coats');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (13, '55530', 1, 4, 'After Party Vintage Total Stud Denim Studded Jacket', 'You''re officially invited to Nasty Gal''s After Party. Each piece is made with reworked vintage fabric, so take your pick of these limited edition styles and give them a second chance to party. This reworked vintage Levi''s jacket has silver studded detailing, chest pockets, and distressing at back. They are one of a kind so each style will be slightly different. Button closures at front, pockets, and cuffs. Unlined. Perfect with a slip dress and moto boots.<br/>*Cotton *Runs true to size *Model is wearing size 42*Machine wash warm *Imported', 'http://www.nastygal.com/clothes-outerwear-jackets/after-party-vintage-total-stud-denim-studded-jacket-', 241.02, 241.02, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (13, 13, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (48, 13, '//i.ngimg.com/resources/nastygal/images/products/processed/55530.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (49, 13, '//i.ngimg.com/resources/nastygal/images/products/processed/55530.4.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (50, 13, '//i.ngimg.com/resources/nastygal/images/products/processed/55530.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (51, 13, '//i.ngimg.com/resources/nastygal/images/products/processed/55530.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (52, 13, '//i.ngimg.com/resources/nastygal/images/products/processed/55530.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (13, 'S/M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (13, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (13, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (13, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (14, '54363', 1, 4, 'Annalise Double Breasted Anorak', 'Get ready for some mad jacket props. The Annalise Anorak is olive green and features flap pockets, double-breasted design, and boxy fit. Front snap closure. unlined. We love it over a floral maxi with combat boots, or teamed up with skinnies and a vintage muscle tee.<br/>*Cotton/Polyester
*Runs true to size
*Model is wearing smallest size available
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-outerwear-coats/annalise-double-breasted-anorak', 82.76, 82.76, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (14, 14, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (53, 14, '//i.ngimg.com/resources/nastygal/images/products/processed/54363.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (54, 14, '//i.ngimg.com/resources/nastygal/images/products/processed/54363.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (55, 14, '//i.ngimg.com/resources/nastygal/images/products/processed/54363.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (56, 14, '//i.ngimg.com/resources/nastygal/images/products/processed/54363.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (14, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (14, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (14, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (14, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (14, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (14, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (15, '53119', 1, 4, 'Nasty Gal Lola Twill Blazer', 'For those nights drinkin'' champagne that tastes like cherry cola. The Lola Blazer is made in a pale blush twill with slight stretch. Features ''70s-inspired silhouette, pockets, snap-closure tabs, and covered seams. Front snap closure. Team it up with the Lola Trousers and a bodysuit for your power boss look, or a bodycon and platforms for after hours. By Nasty Gal.  *Polyester<br/>*Runs true to size
*Model is wearing size small
*Machine wash cold
*Imported', 'http://www.nastygal.com/clothes-outerwear-blazers/nasty-gal-lola-twill-blazer', 119.29, 83.50, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (15, 15, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (57, 15, '//i.ngimg.com/resources/nastygal/images/products/processed/53119.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (58, 15, '//i.ngimg.com/resources/nastygal/images/products/processed/53119.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (59, 15, '//i.ngimg.com/resources/nastygal/images/products/processed/53119.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (60, 15, '//i.ngimg.com/resources/nastygal/images/products/processed/53119.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'XXS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (15, 'XL');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (15, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (16, '55206', 1, 4, 'Glamorous Outlaw Fringe Vest', 'We''re just over here trying to make sure all of your festival wardrobe dreams come true. This white crochet vest has fringe detailing, an open front, and low-cut armholes. Unlined. Perfect with a slip dress and tons of turquoise jewelry. By Glamorous.<br/>*Acrylic *Runs true to size *Model is wearing size small *Hand wash cold *Imported', 'http://www.nastygal.com/clothes-outerwear-vests/glamorous-outlaw-fringe-vest', 58.43, 58.43, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (16, 16, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (61, 16, '//i.ngimg.com/resources/nastygal/images/products/processed/55206.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (62, 16, '//i.ngimg.com/resources/nastygal/images/products/processed/55206.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (63, 16, '//i.ngimg.com/resources/nastygal/images/products/processed/55206.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (64, 16, '//i.ngimg.com/resources/nastygal/images/products/processed/55206.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (16, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (16, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (16, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (16, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (16, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (16, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (16, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (16, 6, 6, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (17, '55300', 1, 4, 'Glamorous Isadora Chiffon Kimono', 'Tropical optical, that''s how we do summer. The Isadora Kimono is made in black chiffon and features white tropical floral print, open front, and wide 3/4 length sleeves. Easy breezy with cutoffs and a bra top, or throw on over your swim gear. By Glamorous.<br/>*Polyester
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-outerwear-kimono/glamorous-isadora-chiffon-kimono', 70.60, 70.60, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (17, 17, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (65, 17, '//i.ngimg.com/resources/nastygal/images/products/processed/55300.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (66, 17, '//i.ngimg.com/resources/nastygal/images/products/processed/55300.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (67, 17, '//i.ngimg.com/resources/nastygal/images/products/processed/55300.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (68, 17, '//i.ngimg.com/resources/nastygal/images/products/processed/55300.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (17, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (17, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (17, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (17, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (17, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (17, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (17, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (17, 6, 6, True);


INSERT INTO category (id, name)
VALUES (5, 'Shorts');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (18, '57332', 1, 5, 'All Fleur You Appliqué Romper', 'Get pretty in petals this summer. The All Fleur You Romper is made in a lightweight gray crepe and features appliqué detail with paillette sequins, beading, and rhinestones. Pleat detail, scoop neck, and ultra low back with strap connector. Back zip closure, partially lined. We love it with platforms and a crossbody.<br/>*Polyester/Rayon
*Runs true to size
*Model is wearing size small
*Dry clean
*Imported', 'http://www.nastygal.com/clothes-rompers-jumpsuits/all-fleur-you-appliqu%C3%A9-romper', 82.76, 82.76, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (18, 18, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (69, 18, '//i.ngimg.com/resources/nastygal/images/products/processed/57332.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (70, 18, '//i.ngimg.com/resources/nastygal/images/products/processed/57332.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (71, 18, '//i.ngimg.com/resources/nastygal/images/products/processed/57332.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (72, 18, '//i.ngimg.com/resources/nastygal/images/products/processed/57332.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (18, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (18, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (18, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (18, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (18, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (18, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (19, '55094', 1, 5, 'Nasty Gal Denim - The Tomahawk Conch Cutoffs', 'We’re not about fitting in—until it comes to denim. Our vintage-inspired Nasty Gal Denim Collection is all about custom washes, perfect fits, and making your butt look good. The Tomahawk Shorts are made in black denim and feature shredding detail, conch and vegan leather fringe embellishment, and four-pocket design. Front zip closure. Slays it with a tissue thin v-neck, or lace crop top.   *Cotton<br/>*Runs true to size
*Model is wearing size 26
*Dry clean
*Made in U.S.A.', 'http://www.nastygal.com/clothes-bottoms-denim/nasty-gal-denim--the-tomahawk-conch-cutoffs', 119.29, 119.29, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (19, 19, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (73, 19, '//i.ngimg.com/resources/nastygal/images/products/processed/55094.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (74, 19, '//i.ngimg.com/resources/nastygal/images/products/processed/55094.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (75, 19, '//i.ngimg.com/resources/nastygal/images/products/processed/55094.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (76, 19, '//i.ngimg.com/resources/nastygal/images/products/processed/55094.3.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (77, 19, '//i.ngimg.com/resources/nastygal/images/products/processed/55094.4.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '24');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '25');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '26');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '27');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '28');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '29');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '30');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (19, '31');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (19, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (20, '55264', 1, 5, 'Glamorous Cécile Brocade Skirt', 'Shine on in this gold brocade skirt by Glamorous. It features a gold and pink print, structured silhouette, zip closure at back, and full lining. Perfect with the Cécile Crop Top and sky-high pumps--gettin'' set up has never looked better.<br/>*Polyester
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Imported', 'http://www.nastygal.com/clothes-bottoms-skirts/glamorous-c%C3%A9cile-brocade-skirt', 82.76, 82.76, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (20, 20, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (78, 20, '//i.ngimg.com/resources/nastygal/images/products/processed/55264.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (79, 20, '//i.ngimg.com/resources/nastygal/images/products/processed/55264.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (80, 20, '//i.ngimg.com/resources/nastygal/images/products/processed/55264.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (81, 20, '//i.ngimg.com/resources/nastygal/images/products/processed/55264.3.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (82, 20, '//i.ngimg.com/resources/nastygal/images/products/processed/55264.4.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (20, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (20, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (20, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (20, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (20, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (20, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (20, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (20, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (21, '53150', 1, 5, 'Nasty Gal Tie''s the Limit Knit Leggings - Olive', 'Let''s hear that rebel yell, ladies. The Tie''s the Limit Leggings are made in a heavyweight army green knit and feature lattice panel design at back. Elasticized waistband. We love them with combat boots, a shredded tee, and some serious punk ''n roll. By Nasty Gal.<br/>*Rayon/Spandex
*Runs true to size
*Model is wearing size small
*Machine wash cold
*Imported', 'http://www.nastygal.com/clothes-bottoms-pants/nasty-gal-ties-the-limit-knit-leggings--olive', 82.76, 82.76, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (21, 21, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (83, 21, '//i.ngimg.com/resources/nastygal/images/products/processed/53150.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (84, 21, '//i.ngimg.com/resources/nastygal/images/products/processed/53150.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (85, 21, '//i.ngimg.com/resources/nastygal/images/products/processed/53150.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (86, 21, '//i.ngimg.com/resources/nastygal/images/products/processed/53150.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'XXS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (21, 'XL');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (21, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (22, '50235', 1, 5, 'Lee + Lani The Athens Bikini Top', 'Get ready to make some serious waves. This white bikini top by Lee + Lani has opaque white panels at bust, cutouts at center, and sheer striped detailing at sides. Gold hook closure at back around cutout, light padding/underwire at bust. Partially lined, stretch fabric. Throw it on with the Tokyo Bikini Top and a vintage kimono--oversized sunnies optional, but highly encouraged.<br/>*Nylon/Elastane*Runs true to size *Model is wearing size x-small*Hand wash cold *Imported', 'http://www.nastygal.com/clothes-swimwear/lee--lani-the-athens-bikini-top', 231.28, 231.28, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (22, 22, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (87, 22, '//i.ngimg.com/resources/nastygal/images/products/processed/50235.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (88, 22, '//i.ngimg.com/resources/nastygal/images/products/processed/50235.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (89, 22, '//i.ngimg.com/resources/nastygal/images/products/processed/50235.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (90, 22, '//i.ngimg.com/resources/nastygal/images/products/processed/50235.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (22, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (22, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (22, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (22, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (22, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (22, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (22, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (22, 3, 3, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (23, '54524', 1, 5, 'Nasty Gal Boy Crazy Mesh Bra', 'Oh boy, you''re gonna kill it in this one. The Boy Crazy Bra is made in white mesh and features front button closure, striped elastic hem, and low scoop neck. Team it up with the Boy Crazy Thong, or mx and match however you want. By Nasty Gal.  *Nylon/Spandex/Cotton*Runs true to size *Model is wearing size small*Hand wash cold *Imported', 'http://www.nastygal.com/clothes-lingerie/nasty-gal-boy-crazy-mesh-bra', 46.25, 46.25, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (23, 23, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (91, 23, '//i.ngimg.com/resources/nastygal/images/products/processed/54524.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (92, 23, '//i.ngimg.com/resources/nastygal/images/products/processed/54524.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (93, 23, '//i.ngimg.com/resources/nastygal/images/products/processed/54524.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (94, 23, '//i.ngimg.com/resources/nastygal/images/products/processed/54524.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (23, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (23, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (23, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (23, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (23, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (23, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (23, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (23, 1, 1, False);


INSERT INTO category (id, name)
VALUES (6, 'Swimwear');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (24, '55918', 1, 6, 'Nasty Gal Wave Down Bikini Top - Blue', 'This bikini top is double the fun--you can rock it as a cute little crop top or bikini top. It has a mock neck, cutaway detailing, and straps at back. Stretch band at hem, partially lined. The Wave Down Bikini Top is part of our mix & match swim collection, so throw it on with your favorite bottoms--then get ready to make waves.<br/>*Nylon/Spandex/Polyester
*Runs true to size
*Model is wearing size small
*Hand wash cold
*Made in U.S.A.', 'http://www.nastygal.com/clothes-swimwear-mix-match/nasty-gal-wave-down-bikini-top--blue', 73.04, 73.04, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (24, 24, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (95, 24, '//i.ngimg.com/resources/nastygal/images/products/processed/55918.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (96, 24, '//i.ngimg.com/resources/nastygal/images/products/processed/55918.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (97, 24, '//i.ngimg.com/resources/nastygal/images/products/processed/55918.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (98, 24, '//i.ngimg.com/resources/nastygal/images/products/processed/55918.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (24, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (24, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (24, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (24, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (24, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (24, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (24, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (24, 1, 1, False);


INSERT INTO category (id, name)
VALUES (7, 'Lingerie');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (25, '52091', 1, 7, 'SKIVVIES Delicacy Strappy Panty', 'Say hello to panty perfection. The Delicacy Panty is black and features strap detail, waist "belt," and minimal back coverage. Partially lined. Perfect for mixing and matching. By SKIVVIES by For Love and Lemons.   *Nylon/Spandex *Runs true to size<br/>*Model is wearing size small*Hand wash cold *Imported', 'http://www.nastygal.com/clothes-intimates-panties/skivvies-delicacy-strappy-panty', 73.04, 73.04, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (25, 25, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (99, 25, '//i.ngimg.com/resources/nastygal/images/products/processed/52091.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (100, 25, '//i.ngimg.com/resources/nastygal/images/products/processed/52091.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (101, 25, '//i.ngimg.com/resources/nastygal/images/products/processed/52091.2.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (25, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (25, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (25, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (25, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (25, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (25, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (25, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (25, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (26, '50980', 1, 7, 'Noe Zachary Nano Underwire Bodysuit', 'Get inside-out in the sleek and minimal undergarments-gone-outerwear from our current brand addiction, Noe. Their Zachary Nano Bodysuit is made in an ultra slinky knit and features plunge underwire, adjustable elasticized gros grain straps, and low back cutout design. Back S-hook, crotch snap closure. We love it with hot pants and platforms for the club, or structured palazzo trousers and a bright lip color for a day look.   *Polyamide/Elastane<br/>*Runs true to size
*Model is wearing size XS
*Hand wash cold
*Made in U.S.A', 'http://www.nastygal.com/clothes-intimates-bustiers-bodysuits/noe-zachary-nano-underwire-bodysuit', 340.83, 340.83, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (26, 26, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (102, 26, '//i.ngimg.com/resources/nastygal/images/products/processed/50980.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (103, 26, '//i.ngimg.com/resources/nastygal/images/products/processed/50980.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (104, 26, '//i.ngimg.com/resources/nastygal/images/products/processed/50980.2.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (26, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (26, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (26, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (26, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (26, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (26, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (26, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (26, 2, 2, False);


INSERT INTO category (id, name)
VALUES (8, 'Shoes');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (27, '54244', 1, 8, 'Jeffrey Campbell Winifred Knee-High Leather Boot', 'Time to show off that wild side. These embossed leather knee-high boots by Jeffrey Campbell feature a snakeskin print, square toe, silver hardware, stacked heel, and zip closure at side. Genuine leather lining, cushioned insole. Perfect with a shift dress, winged liner, and tons of rings.<br/>*Embossed Leather/Synthetic Materials
*Shoe height: 21.5"/54.5cm
*Heel height: 4.25"/11cm
*Runs half-size small
*Imported', 'http://www.nastygal.com/shoes-boots-heels/jeffrey-campbell-winifred-kneehigh-leather-boot', 241.02, 241.02, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (27, 27, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (105, 27, '//i.ngimg.com/resources/nastygal/images/products/processed/54244.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (106, 27, '//i.ngimg.com/resources/nastygal/images/products/processed/54244.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (107, 27, '//i.ngimg.com/resources/nastygal/images/products/processed/54244.2.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (27, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (27, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (28, '55070', 1, 8, 'Nasty Gal Fox Fire Leather Boot', 'We designed the best of the west, and we''re sharing. These black leather boots feature a distressed upper with stitched detailing, exposed bronze zip closures at sides, genuine leather lining, and a stacked heel. Cushioned insole. Throw them on with vintage Levi''s, a tissue-thin white tee, and your favorite moto jacket.<br/>*Leather
*Shoe height: 8"/20cm
*Heel height: 1.5"/4cm
*True to size
*Imported', 'http://www.nastygal.com/shoes-boots-flats/nasty-gal-fox-fire-leather-boot', 241.02, 241.02, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (28, 28, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (108, 28, '//i.ngimg.com/resources/nastygal/images/products/processed/55070.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (109, 28, '//i.ngimg.com/resources/nastygal/images/products/processed/55070.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (110, 28, '//i.ngimg.com/resources/nastygal/images/products/processed/55070.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (111, 28, '//i.ngimg.com/resources/nastygal/images/products/processed/55070.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (28, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (28, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (29, '55071', 1, 8, 'Nasty Gal Bandido Suede Bootie', 'Bandido to the bone. This suede bootie is gray and features chelsea insert, stacked heel, and almond toe. Wear these babies with everything-- jumpsuits, cutoffs, floral maxis--you name it. By Nasty Gal.<br/>*Suede Leather/Synthetic Materials
*Shoe height: 8.5"/21.5cm
*Heel height: 3.5"/9cm
*True to size
*Imported', 'http://www.nastygal.com/shoes-boots-ankle/nasty-gal-bandido-suede-bootie', 158.24, 158.24, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (29, 29, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (112, 29, '//i.ngimg.com/resources/nastygal/images/products/processed/55071.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (113, 29, '//i.ngimg.com/resources/nastygal/images/products/processed/55071.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (114, 29, '//i.ngimg.com/resources/nastygal/images/products/processed/55071.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (115, 29, '//i.ngimg.com/resources/nastygal/images/products/processed/55071.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (29, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (29, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (30, '54529', 1, 8, 'Howsty Aisha Leather Boot', 'Give basic the boot. The Aisha Boot is made in tan leather and features woven tapestry panel, fringe detail, and low stacked heel. We love it with a lace dress and stacked jewelry, or skinnies and a knit bra top. By Howsty.  *Leather/Canvas<br/>*Shoe Height: 18"/46cm
*Heel Height: 1.25/3cm
*True to size
*Imported', 'http://www.nastygal.com/shoes-boots-knee-high/howsty-aisha-leather-boot', 486.90, 486.90, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (30, 30, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (116, 30, '//i.ngimg.com/resources/nastygal/images/products/processed/54529.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (117, 30, '//i.ngimg.com/resources/nastygal/images/products/processed/54529.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (118, 30, '//i.ngimg.com/resources/nastygal/images/products/processed/54529.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (119, 30, '//i.ngimg.com/resources/nastygal/images/products/processed/54529.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '36');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '37');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '39');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '40');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (30, '41');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (30, 3, 3, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (31, '54137', 1, 8, 'Grey City Warren Concho Leather Bootie', 'Every cutie needs her bootie. The Warren Bootie is made in red leather and features concho detailing, low stacked heel, and front and side zip closures. We love it with a maxi dress and Panama hat, or to make skinnies and a basic tank pop. By Grey City.<br/>*Leather/Synthetic
*Shoe height: 6.5"/16.5cm
*Heel height: 2"/5cm
*True to size
*Wider feet may want to size up
*Imported', 'http://www.nastygal.com/shoes-booties-heels/grey-city-warren-concho-leather-bootie', 228.84, 228.84, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (31, 31, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (120, 31, '//i.ngimg.com/resources/nastygal/images/products/processed/54137.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (121, 31, '//i.ngimg.com/resources/nastygal/images/products/processed/54137.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (122, 31, '//i.ngimg.com/resources/nastygal/images/products/processed/54137.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (123, 31, '//i.ngimg.com/resources/nastygal/images/products/processed/54137.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (31, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (31, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (32, '54250', 1, 8, 'Jeffrey Campbell Noel Tinsel Heel', 'Party hardy, Jeffrey style. The Noel Heel is made in silver box leather and features tinsel embellishment, elasticized sling back, and stiletto heel. We love it teamed up with a low-cut jumpsuit for a night look, or high waisted shorts and a basic tee to keep your casual look amped. By Jeffrey Campbell.*Box Leather/Tinsel<br/>*Shoe height: 7"/18cm
*Heel height: 4.25"/11cm
*True to size
*Narrow at toe
*Imported', 'http://www.nastygal.com/shoes-heels-pumps/jeffrey-campbell-noel-tinsel-heel', 176.50, 176.50, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (32, 32, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (124, 32, '//i.ngimg.com/resources/nastygal/images/products/processed/54250.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (125, 32, '//i.ngimg.com/resources/nastygal/images/products/processed/54250.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (126, 32, '//i.ngimg.com/resources/nastygal/images/products/processed/54250.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (127, 32, '//i.ngimg.com/resources/nastygal/images/products/processed/54250.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '10.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (32, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (32, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (33, '54378', 1, 8, 'Steve Madden Stecy Heel - Glitter', 'Give that disco ball a little competition this weekend. These rose gold glitter heels have a single toe strap and adjustable buckle closure at ankle. Stiletto heel, fully lined. Cushioned insole. Wear them with your favorite party dress or dress them down with boyfriend jeans and a shredded tee. By Steve Madden.  *Leather/Synthetic<br/>*Shoe height: 8"/20cm
*Heel height: 4.5"/11.5cm
*Runs true to size
*Imported', 'http://www.nastygal.com/shoes-pumps-open-toe/steve-madden-stecy-heel--glitter-', 97.38, 97.38, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (33, 33, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (128, 33, '//i.ngimg.com/resources/nastygal/images/products/processed/54378.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (129, 33, '//i.ngimg.com/resources/nastygal/images/products/processed/54378.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (130, 33, '//i.ngimg.com/resources/nastygal/images/products/processed/54378.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (131, 33, '//i.ngimg.com/resources/nastygal/images/products/processed/54378.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (33, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (33, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (34, '53770', 1, 8, 'T.U.K. Nosebleed Platform Boot', 'If you''re sitting in the nosebleed section, you''ll still have a good view with these platform boots. They have a textured vegan leather upper, lace-up detailing, and silver eyelets. Treaded sole, fully lined. Cushioned insole. Perfect with a vintage floral dress and tons of chokers. By T.U.K.<br/>*PU/Synthetic
*Shoe height: 10"/25.5cm
*Heel height: 3"/7.5cm
*Platform height: 3"/7.5cm
*Runs half-size small
*Imported', 'http://www.nastygal.com/shoes-platforms-boots/tuk-nosebleed-platform-boot', 133.90, 133.90, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (34, 34, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (132, 34, '//i.ngimg.com/resources/nastygal/images/products/processed/53770.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (133, 34, '//i.ngimg.com/resources/nastygal/images/products/processed/53770.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (134, 34, '//i.ngimg.com/resources/nastygal/images/products/processed/53770.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (135, 34, '//i.ngimg.com/resources/nastygal/images/products/processed/53770.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (34, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (34, 3, 3, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (35, '54226', 1, 8, 'Jeffrey Campbell Dariela Patent Leather Platform', 'You''re so twisted, and we''re so into it. The Dariela Platform is made in black patent leather and features wrapping neoprene strap design, cutout detail, open toe, treaded platform, and chunky heel. Back zip closure. Team it up with a sheer maxi dress or skinnies and a moto jacket. By Jeffrey Campbell. *Leather/Neoprene Upper, Synthetic Sole<br/>*Height: 10"/25.5 cm
*Heel Height: 6.5"/16.5 cm
*Platform Height: 2.5"/6.5 cm', 'http://www.nastygal.com/shoes-platforms-heels/jeffrey-campbell-dariela-patent-leather-platform', 158.24, 158.24, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (35, 35, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (136, 35, '//i.ngimg.com/resources/nastygal/images/products/processed/54226.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (137, 35, '//i.ngimg.com/resources/nastygal/images/products/processed/54226.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (138, 35, '//i.ngimg.com/resources/nastygal/images/products/processed/54226.2.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '10.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (35, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (35, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (36, '56007', 1, 8, 'Superga Up and Down Platform Sneaker', 'Ya gotta get up to get down, ladies. The Superga Up and Down Platform Sneaker is made in black canvas and features platform sole with waffle-textured strip, custom hardware, and lace-up closure. We love it with cropped palazzos and a slinky tank, or teamed up with a bodycon to give your look a sporty vibe. By Superga. *Canvas/Synthetic Materials<br/>*Shoe height: 4"/10cm
*Platform height: 1.5"/4cm
*True to size
*Imported', 'http://www.nastygal.com/shoes-platforms-sneakers/superga-up-and-down-platform-sneaker', 97.38, 97.38, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (36, 36, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (139, 36, '//i.ngimg.com/resources/nastygal/images/products/processed/56007.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (140, 36, '//i.ngimg.com/resources/nastygal/images/products/processed/56007.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (141, 36, '//i.ngimg.com/resources/nastygal/images/products/processed/56007.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (142, 36, '//i.ngimg.com/resources/nastygal/images/products/processed/56007.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 3, 3, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (36, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (36, 4, 4, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (37, '54530', 1, 8, 'Howsty Naaz Leather Sneaker', 'Love on the run is right. The Naaz Sneaker is made in tan leather and suede and features woven tapestry panels, lace-up closure, and white sole with burgundy tread. Team it up with skinnies or a maxi skirt. Perfect for festival season. By Howsty.    *Leather/Canvas/Synthetic Materials<br/>*Shoe Height: 3.5"/9cm
*Heel Height: 1/2.5cm
*Runs true to size
*Imported', 'http://www.nastygal.com/shoes-sneakers-flats/howsty-naaz-leather-sneaker', 310.36, 310.36, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (37, 37, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (143, 37, '//i.ngimg.com/resources/nastygal/images/products/processed/54530.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (144, 37, '//i.ngimg.com/resources/nastygal/images/products/processed/54530.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (145, 37, '//i.ngimg.com/resources/nastygal/images/products/processed/54530.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (146, 37, '//i.ngimg.com/resources/nastygal/images/products/processed/54530.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (37, '10.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (37, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (38, '52409', 1, 8, 'Chiara Ferragni Kimye Suede Sneaker - Pastel Multi', 'High tops and pastels--we can''t think of a more attractive couple. The Kimye Sneaker is made in pastel pink, yellow, blue, and gray suede and features velcro ankle straps, lace-up closure, and cutout design. Killer with a maxi skirt and a beanie, or skinnies and a shredded tee. By Chiara Ferragni.<br/>*Suede/Leather
*Shoe height: 7"/18cm
*Platform height: 1.5"/4cm
*Imported', 'http://www.nastygal.com/shoes-sneakers-high-tops/chiara-ferragni-kimye-suede-sneaker--pastel-multi', 496.57, 496.57, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (38, 38, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (147, 38, '//i.ngimg.com/resources/nastygal/images/products/processed/52409.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (148, 38, '//i.ngimg.com/resources/nastygal/images/products/processed/52409.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (149, 38, '//i.ngimg.com/resources/nastygal/images/products/processed/52409.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (150, 38, '//i.ngimg.com/resources/nastygal/images/products/processed/52409.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '35');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 2, 2, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '36');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '37');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '38');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '39');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '40');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (38, '41');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (38, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (39, '54266', 1, 8, 'Jeffrey Campbell Townie Leather Oxford', 'City gals, say hello to Townie. This oxford from Jeffrey Campbell is made in nude box leather and features wing tip detail, short heel, and lace-up closure. Killer with an A-line dress for a mod look, or pleated trousers for a tomboy vibe.*Box Leather/Synthetic Materials<br/>*Shoe height: 4"/10cm
*Heel height: 1.75"/4.5cm
*Runs half-size small
*Narrow at toe
*Imported', 'http://www.nastygal.com/shoes-flats-oxfords/jeffrey-campbell-townie-leather-oxford', 188.67, 188.67, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (39, 39, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (151, 39, '//i.ngimg.com/resources/nastygal/images/products/processed/54266.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (152, 39, '//i.ngimg.com/resources/nastygal/images/products/processed/54266.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (153, 39, '//i.ngimg.com/resources/nastygal/images/products/processed/54266.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (154, 39, '//i.ngimg.com/resources/nastygal/images/products/processed/54266.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 5, 5, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '10.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (39, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (39, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (40, '55103', 1, 8, 'Nasty Gal x Teva Walk On Flatform Sandal', 'We teamed up with one of our favorite footwear brands, Teva, on a limited edition collaboration fit for festival goers and poolside loungers alike. These flatform sandals have a textured black upper with a velcro closure at toe, clasp closure at ankle, and light purple hardware. Orange mesh lining, white flatform with black treaded detailing at bottom. Throw them on with a tee dress and leather cap--then get ready to step out and turn heads. By Nasty Gal x Teva.<br/>*Canvas/Synthetic
*Shoe height: 5.5"/14cm
*Platform height: 2.75"/7cm
*True to size
*Imported', 'http://www.nastygal.com/shoes-sandals-flats/nasty-gal-x-teva-walk-on-flatform-sandal', 133.90, 133.90, 1, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (40, 40, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (155, 40, '//i.ngimg.com/resources/nastygal/images/products/processed/55103.0.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (156, 40, '//i.ngimg.com/resources/nastygal/images/products/processed/55103.1.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (157, 40, '//i.ngimg.com/resources/nastygal/images/products/processed/55103.2.detail.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (158, 40, '//i.ngimg.com/resources/nastygal/images/products/processed/55103.3.detail.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 6, 6, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (40, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (40, 1, 1, False);


INSERT INTO country (id, country)
VALUES (2, 'New York');


INSERT INTO city (id, city, country_id)
VALUES (2, 'New York', 2);


INSERT INTO retailer (id, name, homepage_link, city_id)
VALUES (2, 'PixieMarket', 'http://www.pixiemarket.com', 2);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (41, 'Ren1854', 1, 1, 'Nothing to wear varsity dress', 'White drop waist cotton summer dress with varsity stripe neckline and sleeve cuff and nothing to wear front writing. Has side pockets. Unlined. Style this summer white tank dress with cute platforms.<br/>*100% cotton*Bust 34"/ 86cm*Length 32"/ 81cm*Model is wearing a size small and model''s height is 5.9"', 'http://www.pixiemarket.com/nothing-to-wear-varsity-dress.html', 49.00, 49.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (41, 41, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (159, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/s/l/slogan-printed-dress-0e7a1223-2-1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (160, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/s/l/slogan-dress-0e7a1216-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (161, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a1203-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (162, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a1201-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (163, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a0766-1-0.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (164, 41, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/s/p/sporty-girl-0e7a1181-3.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (41, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (41);
INSERT INTO variation_size (product_variation_id, size)
VALUES (41, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (41);
INSERT INTO variation_size (product_variation_id, size)
VALUES (41, 'L');
INSERT INTO variation_stock (product_variation_id)
VALUES (41);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (42, 'End1039', 1, 1, 'Baby Blue Organza Two Piece Dress', 'Cute and girly organza two in one two layer dress. Inner dress is a powder blue  lace slip skater dress with hidden size zipper. Outer dress is a shirt sheer organza white shirt dress. Can be worn together or separately.<br/>*100% polyester*Length 34"/ 87cm*Model is wearing a size small and model''s height is 5.8"', 'http://www.pixiemarket.com/baby-blue-organza-two-piece-dress.html', 64.00, 64.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (42, 42, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (165, 42, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/o/r/organza-dress-0e7a5268-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (166, 42, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a5297-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (167, 42, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/o/r/organza-mesh-dress-0e7a5262-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (168, 42, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/o/r/organza-mesh-dress-0e7a5213-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (169, 42, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a5236-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (42, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (42);
INSERT INTO variation_size (product_variation_id, size)
VALUES (42, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (42);
INSERT INTO variation_size (product_variation_id, size)
VALUES (42, 'L');
INSERT INTO variation_stock (product_variation_id)
VALUES (42);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (43, 'Dpr1654', 1, 1, 'Stazi Collar Shirt Dress', 'Cute white collar shirt dress with pinstripe skirt bottom. Has elastic encased waist band and hidden back zipper.Partially lined.<br/>*Cotton blend*Bust 34"/ 86cm*Length31"/ 79cm*Model is wearing a size xs and model''s height is 5.9"', 'http://www.pixiemarket.com/stazi-collar-shirt-dress.html', 76.00, 76.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (43, 43, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (170, 43, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/c/u/cute-dress-0e7a4373-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (171, 43, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4362-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (172, 43, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4391-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (173, 43, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4400-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (174, 43, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a7049-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (43, 'XS');
INSERT INTO variation_stock (product_variation_id)
VALUES (43);
INSERT INTO variation_size (product_variation_id, size)
VALUES (43, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (43);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (44, 'Des2411', 1, 2, 'Stripe Off The Shoulder top', 'Pretty and Flirty Light Blue Stripe Off the shoulder shirt dress with bubbkle elastic hem sleeves. Style it with anything in your closet.<br/>*Cotton blend*22"/48cm*Model is wearing a size s/m and model''s height is 5.8"', 'http://www.pixiemarket.com/stripe-off-the-shoulder-top.html', 46.00, 46.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (44, 44, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (175, 44, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/o/f/off-the-shoulder-top-r0e7a4952-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (176, 44, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4947-1_1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (177, 44, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/o/f/off-the-shoulder-top-0e7a4939-1r.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (178, 44, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4931-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (179, 44, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4221-highres-002_1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (44, 'S/M');
INSERT INTO variation_stock (product_variation_id)
VALUES (44);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (45, 'Rep2012', 1, 2, 'Rope Stripe Nautical Tee', 'Cute and versatile white tank tee with rope metallic front print. Style this navy stripe nautical top with any denim bottom.<br/>*Cotton blend*Length 23.5"/ 59cm*Model is wearing a size small and model''s height is 5.8"', 'http://www.pixiemarket.com/rope-stripe-nautical-tee.html', 52.00, 52.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (45, 45, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (180, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/r/o/rope-tshirt-0e7a6436-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (181, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4218-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (182, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/r/o/rope-tee-0e7a6432-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (183, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6447-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (184, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6357-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (185, 45, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-pant-0e7a6385-1_1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (45, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (45);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (46, 'Mil2614', 1, 2, 'Mint Milky Varsity Top', 'SOLD OUT- ADD TO WAIT LIST<br/>Super cute and super soft mint tee top with V varsity stripe neckline and milky irl front print. Has @teng 1 printed on back. Style this cute mint novelty top with a skater skirt and platform loafers.<br/>*Cotton blend*Lenth 28"/71cm', 'http://www.pixiemarket.com/mint-milky-varsity-top.html', 32.00, 32.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (46, 46, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (186, 46, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/m/i/milky-sweater-0e7a0947-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (187, 46, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a0996-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (188, 46, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/m/i/milky-sweater-0e7a0947-2.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (189, 46, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a1019-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (190, 46, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a0995-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (46, 'S/M');
INSERT INTO variation_stock (product_variation_id)
VALUES (46);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (47, 'Fif2615', 1, 2, 'The Fifth Long Sleeve Starstruck Top', 'The Fifth pastel pink long sleeve cross over crop top with side cut outs. Waffle texture and stretchy. Style this crop pastel top with the matching pastel tulip skirt.<br/>*96% polyester 4% elastane*Length 16"/38cm*Model is wearing a size small and model''s height is 5.8"<br/>', 'http://www.pixiemarket.com/the-fifth-long-sleeve-starstruck-top.html', 62.00, 62.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (47, 47, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (191, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/c/u/cutout-top-0e7a9939-4_1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (192, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/p/i/pink-matching-set-0e7a9939-1_1_1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (193, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/p/i/pink-cropped-top-0e7a7612-1_1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (194, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/p/i/pink-matching-set-0e7a9938-1_1_1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (195, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a9944-1_1-3-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (196, 47, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/p/i/pink-matching-set-0e7a9882-1_1-1-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (47, 'XS');
INSERT INTO variation_stock (product_variation_id)
VALUES (47);
INSERT INTO variation_size (product_variation_id, size)
VALUES (47, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (47);
INSERT INTO variation_size (product_variation_id, size)
VALUES (47, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (47);


INSERT INTO category (id, name)
VALUES (9, 'Bottoms');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (48, 'Mid3100', 1, 9, 'Light Denim Button Midi Skirt', 'Spot on for summer is this light denim high waist midi skirt with button down front, side pockets and elastic encased wiastband. Style this full midi denim skirt with a cute tee and some platform sandals.<br/>*100% coton denim*Model is wearing a size s/m and model''s height is 5.8"', 'http://www.pixiemarket.com/light-denim-button-midi-skirt.html', 89.00, 89.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (48, 48, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (197, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-skirt-0e7a6294-1r.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (198, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-skirt-0e7a6294-1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (199, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6352-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (200, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6276-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (201, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-skirt-0e7a4208-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (202, 48, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-skirt-0e7a6247-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (48, 'S/M');
INSERT INTO variation_stock (product_variation_id)
VALUES (48);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (49, 'Spo3411', 1, 9, 'High waist floral shorts', 'Pretty multi floral print high waisted shorts with back hidden zipper. Unlined. Style these high waist summer shorts with a cute white blouse.<br/>*100% polyester*Waist 25"/ 63.5cm *Length 14"/ 36cm*Model is wearing a size small and model''s height is 5.9"', 'http://www.pixiemarket.com/high-waist-floral-shorts.html', 40.00, 40.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (49, 49, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (203, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/l/flower-printed-shorts-0e7a2457.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (204, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/l/flower-shorts-0e7a2464-1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (205, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a2499-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (206, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a2462-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (207, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/l/flower-shorts-0e7a0738-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (208, 49, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/l/flower-shorts-0e7a2457-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (49, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (49);
INSERT INTO variation_size (product_variation_id, size)
VALUES (49, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (49);
INSERT INTO variation_size (product_variation_id, size)
VALUES (49, 'L');
INSERT INTO variation_stock (product_variation_id)
VALUES (49);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (50, 'Den3104', 1, 9, 'Aria Culotte Jeans', 'Perfect fpr Spring, light denim wide cropped denim pant  with raw edges and no side seams. Fit is high waisted. Wear them with cute summer crop tops and sandal platforms.<br/>*100% cotton denim*Inseam 24"/61cm*Model is wearing a size small and model''s height is 5.8"', 'http://www.pixiemarket.com/aria-culotte-jeans.html', 89.00, 89.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (50, 50, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (209, 50, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-pant-0e7a6385-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (210, 50, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-pant-0e7a6418-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (211, 50, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6416-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (212, 50, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a6390-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (213, 50, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/d/e/denim-pant-0e7a4216-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (50, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (50);
INSERT INTO variation_size (product_variation_id, size)
VALUES (50, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (50);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (51, 'Joa3100', 1, 9, 'J.O.A black culotte jumpsuit', 'J.O.A Black wide leg culotte jumpsuit with hidden back zipper. Style this dressy chic crop jumpsuit with black ankle strap heels.<br/>*100% polyester*Length 52"/132cm*Model is wearing a size small and model''s height is 5.8"', 'http://www.pixiemarket.com/j-o-a-black-culotte-jumpsuit.html', 89.00, 89.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (51, 51, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (214, 51, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-jumpsuit-0e7a0664.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (215, 51, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-jumpsuit-0e7a0707.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (216, 51, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a0709.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (217, 51, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a0660.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (51, 'XS');
INSERT INTO variation_stock (product_variation_id)
VALUES (51);
INSERT INTO variation_size (product_variation_id, size)
VALUES (51, 'S');
INSERT INTO variation_stock (product_variation_id)
VALUES (51);
INSERT INTO variation_size (product_variation_id, size)
VALUES (51, 'M');
INSERT INTO variation_stock (product_variation_id)
VALUES (51);
INSERT INTO variation_size (product_variation_id, size)
VALUES (51, 'L');
INSERT INTO variation_stock (product_variation_id)
VALUES (51);


INSERT INTO category (id, name)
VALUES (10, 'Outerwear');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (52, 'Tre4122', 1, 10, 'Chloe Tan Trench Jacket', '70''s style tan trench with multi patch pockets and belt tie. Style this cargo trench with any outfit.<br/>*Polyetser blend*Length 39"/99cm<br/>', 'http://www.pixiemarket.com/chloe-tan-trench-jacket.html', 154.00, 154.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (52, 52, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (218, 52, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/e/beige-trench-0e7a8860.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (219, 52, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/e/beige-trench-0e7a8839.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (220, 52, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a8906rr.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (221, 52, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a8859.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (222, 52, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/e/beige-trench-0e7a7712-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (52, 'S/M');
INSERT INTO variation_stock (product_variation_id)
VALUES (52);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (53, 'Gre4122', 1, 10, 'Long Green Blazer Jacket', 'Everyday perfect long emerald green blazer jacket feauturing two front pockets and and snap buton front closure. Style this boyfriend style long jacket with a statement tee and and mom denim shorts. Unlined.', 'http://www.pixiemarket.com/long-green-blazer-jacket.html', 99.00, 99.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (53, 53, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (223, 53, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/g/r/green-jacket-0e7a8979-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (224, 53, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/g/r/green-jacket-0e7a8937-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (225, 53, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a8971-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (226, 53, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/g/r/green-jacket-0e7a8990-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (227, 53, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a8970-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (53, 'OneSize');
INSERT INTO variation_stock (product_variation_id)
VALUES (53);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (54, 'Nan3122', 1, 10, 'Let Loose Pocket Long Cable Cardigan', 'Tired of the bulky winter coats? Lounge away in this warm and stylish slouchy long cable knit cardigan. It is a black open-front cardigan with two hip pockets. Unlined. Throw this long sleeve black cardigan over a high neck dress, thigh-high socks and relax in style.<br/>*46”/117cm length*Model is wearing size s/m and model’s height is 5’10”/178cm.', 'http://www.pixiemarket.com/let-loose-pocket-long-cable-cardigan.html', 148.00, 148.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (54, 54, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (228, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/c/a/cable-knit-cardigan-150114_pm15092-1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (229, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/c/a/cable-knit-cardigan-150114_pm15066-1-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (230, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/l/o/long-black-cardigan-0e7a1761-11_1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (231, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/1/5/150114_pm15121-12-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (232, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/1/5/150114_pm15120.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (233, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-cable-knit-cardigan-0e7a4086-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (234, 54, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/c/a/cable-knit-cardigan-150114_pm15108-1-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (54, 'S/M');
INSERT INTO variation_stock (product_variation_id)
VALUES (54);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (55, 'Whs8122', 1, 8, 'White Tassel Loafer Platforms', 'White perforated loafer platform featuring a tassel front. Style these white brogue flatform shoes with your favorite summer dresses. Runs a half size small. For example if you are a size 8.5 please take a size 9.<br/>*100% faux leather*Sole man made material*Wedge measures 3.5" /8.5cm', 'http://www.pixiemarket.com/white-tassel-loafer-platforms.html', 59.00, 59.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (55, 55, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (235, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/w/h/white-wedge-0e7a4193-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (236, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/w/h/white-wedges-0e7a3017.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (237, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/w/h/white-wedges-0e7a3024.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (238, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/p/i/pink-matching-set-0e7a9939-1_1_3.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (239, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/i/final0e7a2786-copy.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (240, 55, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/w/h/white-wedge-0e7a4185-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (55, '6');
INSERT INTO variation_stock (product_variation_id)
VALUES (55);
INSERT INTO variation_size (product_variation_id, size)
VALUES (55, '7');
INSERT INTO variation_stock (product_variation_id)
VALUES (55);
INSERT INTO variation_size (product_variation_id, size)
VALUES (55, '8');
INSERT INTO variation_stock (product_variation_id)
VALUES (55);
INSERT INTO variation_size (product_variation_id, size)
VALUES (55, '9');
INSERT INTO variation_stock (product_variation_id)
VALUES (55);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (56, 'Sta8143', 1, 8, 'Love You Denim Sneakers', 'Cute navy chambray sneaker slide shoes with heart you red fuzzy front and 2" white platform .Runs a half size small. For example if you are a size 7 please take a size 7.5.<br/>*100% canvas with rubber sole*2" platform<br/>', 'http://www.pixiemarket.com/love-you-denim-sneakers.html', 99.00, 99.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (56, 56, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (241, 56, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/s/l/slogan-flatform-0e7a3069-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (242, 56, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a3144-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (243, 56, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/f/l/flatform-0e7a3073-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (244, 56, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a3146-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (245, 56, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/0/e/0e7a4391-1_1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '6');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '6.5');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '7');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '7.5');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '8');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);
INSERT INTO variation_size (product_variation_id, size)
VALUES (56, '');
INSERT INTO variation_stock (product_variation_id)
VALUES (56);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (57, 'YRU8943', 1, 8, 'YRU Wolf Pointed Ankle Boots', 'Just when you think that you have enough black leather booties, think again. The Mina Cleated Sole Booties with silver tip detailing will be your new BFF. Features a chunky heel, pointed toes, zipper closure with cushioned insole. Runs true to size. Style these badass lug sole ankle boots with a floral midi dress and your worn-in leather biker jacket. By YRU.<br/>*Leather upper with man-made heels.*2”/5cm heel height*1”/2.5cm platform height', 'http://www.pixiemarket.com/yru-wolf-pointed-ankle-boots.html', 119.00, 119.00, 2, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (57, 57, '', '', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (246, 57, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-boots-150114pm16519-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (247, 57, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-boots-150114pm16531-1.jpg');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (248, 57, 'http://www.pixiemarket.com/media/catalog/product/cache/1/thumbnail/380x495/9df78eab33525d08d6e5fb8d27136e95/b/l/black-boots-pm16528-2-1.jpg');
INSERT INTO variation_size (product_variation_id, size)
VALUES (57, '6');
INSERT INTO variation_stock (product_variation_id)
VALUES (57);
INSERT INTO variation_size (product_variation_id, size)
VALUES (57, '7');
INSERT INTO variation_stock (product_variation_id)
VALUES (57);
INSERT INTO variation_size (product_variation_id, size)
VALUES (57, '8');
INSERT INTO variation_stock (product_variation_id)
VALUES (57);
INSERT INTO variation_size (product_variation_id, size)
VALUES (57, '9');
INSERT INTO variation_stock (product_variation_id)
VALUES (57);
INSERT INTO variation_size (product_variation_id, size)
VALUES (57, '10');
INSERT INTO variation_stock (product_variation_id)
VALUES (57);


INSERT INTO country (id, country)
VALUES (3, 'Pennsylvania');


INSERT INTO city (id, city, country_id)
VALUES (3, 'Philadelphia', 3);


INSERT INTO retailer (id, name, homepage_link, city_id)
VALUES (3, 'FreePeople', 'http://www.freepeople.com', 3);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (58, '34986588', 1, 1, 'Candi Dasa Romper', 'Striped textured cotton romper with sequin-embellished neckline and a sporty silhouette. Open sides with grosgrain ribbon ties and a low surplice V-back.</br>*Inspired by Balinese culture and traditional design techniques, this piece was dreamed up and made with love in Bali.</br>**Please Note: Each piece is unique and might have slight variations due to the hand process.<br/>*100% Cotton</br>*Hand Wash Cold</br>*Made in Bali<br/>Measurements for Small:</br>Bust: 35 in = 89 cm</br>Waist: 38 in = 96 1/2 cm</br>Inseam: 2 3/8 in = 6 cm', 'http://www.freepeople.com/clothes-dresses/candi-dasa-romper/', 131.22, 131.22, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (58, 58, '', 'Mustard', 'http://img2.fpassets.com/is/image/FreePeople/34986588_071_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (249, 58, 'http://img5.fpassets.com/is/image/FreePeople/34986588_071_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (250, 58, 'http://img5.fpassets.com/is/image/FreePeople/34986588_071_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (251, 58, 'http://img3.fpassets.com/is/image/FreePeople/34986588_071_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (252, 58, 'http://img4.fpassets.com/is/image/FreePeople/34986588_071_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (253, 58, 'http://img2.fpassets.com/is/image/FreePeople/34986588_071_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (58, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (58, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (58, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (58, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (58, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (58, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (58, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (58, 3, 3, True);


INSERT INTO category (id, name)
VALUES (11, 'Tops & Tees');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (59, '34993824', 1, 11, 'Printed Touch Love', 'Mix it up with this semi-sheer tank featuring alternate prints on front and back. Lightweight and effortless with side ties and a shapeless silhouette.<br/>*60% Viscose</br>*40% Rayon</br>*Hand Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 47 in = 119 1/2 cm</br>Length: 20 1/4 in = 51 1/2 cm', 'http://www.freepeople.com/clothes-tops/printed-touch-love/', 82.62, 82.62, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (59, 59, '', 'Goldenrod', 'http://img4.fpassets.com/is/image/FreePeople/34993824_072_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (254, 59, 'http://img3.fpassets.com/is/image/FreePeople/34993824_072_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (255, 59, 'http://img2.fpassets.com/is/image/FreePeople/34993824_072_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (256, 59, 'http://img5.fpassets.com/is/image/FreePeople/34993824_072_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (257, 59, 'http://img3.fpassets.com/is/image/FreePeople/34993824_072_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (59, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (59, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (59, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (59, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (59, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (59, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (59, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (59, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (60, 59, '', 'Black Combo', 'http://img2.fpassets.com/is/image/FreePeople/34993824_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (258, 60, 'http://img2.fpassets.com/is/image/FreePeople/34993824_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (259, 60, 'http://img1.fpassets.com/is/image/FreePeople/34993824_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (260, 60, 'http://img1.fpassets.com/is/image/FreePeople/34993824_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (261, 60, 'http://img4.fpassets.com/is/image/FreePeople/34993824_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (60, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (60, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (60, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (60, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (60, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (60, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (60, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (60, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (60, '35284710', 1, 3, 'Washed Ashore Tank', 'Swingy loose-knit tank with racerback grosgrain straps and beaded applique embellishment on neckline.<br/>*48% Cotton</br>*45% Rayon</br>*7% Linen</br>*Hand Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 36 in = 91 1/2 cm</br>Length: 18 1/2 in = 47 cm', 'http://www.freepeople.com/clothes-sweaters/washed-ashore-tank/', 204.12, 204.12, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (61, 60, '', 'Ivory Combo', 'http://img5.fpassets.com/is/image/FreePeople/35284710_011_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (262, 61, 'http://img1.fpassets.com/is/image/FreePeople/35284710_011_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (263, 61, 'http://img5.fpassets.com/is/image/FreePeople/35284710_011_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (264, 61, 'http://img4.fpassets.com/is/image/FreePeople/35284710_011_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (265, 61, 'http://img3.fpassets.com/is/image/FreePeople/35284710_011_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (61, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (61, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (61, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (61, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (61, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (61, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (61, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (61, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (62, 60, '', 'Graphite Combo', 'http://img2.fpassets.com/is/image/FreePeople/35284710_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (266, 62, 'http://img3.fpassets.com/is/image/FreePeople/35284710_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (267, 62, 'http://img5.fpassets.com/is/image/FreePeople/35284710_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (268, 62, 'http://img5.fpassets.com/is/image/FreePeople/35284710_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (269, 62, 'http://img2.fpassets.com/is/image/FreePeople/35284710_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (62, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (62, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (62, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (62, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (62, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (62, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (62, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (62, 3, 3, True);


INSERT INTO category (id, name)
VALUES (12, 'Jackets');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (61, '35408624', 1, 12, 'Zip Army Jacket', 'Military inspired cotton jacket featuring exposed zipper pockets and adjustable waist tie. Button and zipper closure. Lined.<br/>*100% Cotton</br>*Machine Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 41 in = 104 1/4 cm</br>Length: 23 1/2 in = 59 3/4 cm</br>Sleeve Length: 21 3/4 in = 55 1/4 cm', 'http://www.freepeople.com/clothes-jackets-outerwear/zip-up-army-jacket/', 204.12, 204.12, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (63, 61, '', 'Army', 'http://img2.fpassets.com/is/image/FreePeople/35408624_031_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (270, 63, 'http://img3.fpassets.com/is/image/FreePeople/35408624_031_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (271, 63, 'http://img4.fpassets.com/is/image/FreePeople/35408624_031_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (272, 63, 'http://img4.fpassets.com/is/image/FreePeople/35408624_031_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (273, 63, 'http://img2.fpassets.com/is/image/FreePeople/35408624_031_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (274, 63, 'http://img4.fpassets.com/is/image/FreePeople/35408624_031_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (275, 63, 'http://img5.fpassets.com/is/image/FreePeople/35408624_031_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (63, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (63, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (63, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (63, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (63, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (63, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (63, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (63, 3, 3, True);


INSERT INTO category (id, name)
VALUES (13, 'Jumpsuits & Rompers');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (62, '36322261', 1, 13, 'Chambray Drapey Shortall', 'Slouchy and effortless long sleeve chambray shortall with double bust pockets. Buttondown closures and an adjustable tie waistband. Four-pocket style.<br/>*100% Cotton</br>*Machine Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 40 1/2 in = 102 3/4 cm</br>Waist: 38 1/4 in = 97 1/4 cm</br>Hips: 43 1/2 in = 110 1/2 cm</br>Rise: 10 7/8 in = 27 1/2 cm</br>Inseam: 2 3/8 in = 6 cm</br>Sleeve Length: 25 1/4 in = 64 1/4 cm', 'http://www.freepeople.com/clothes-jumpsuits-rompers/chambray-drapey-shortall/', 179.82, 179.82, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (64, 62, '', 'Chambray ', 'http://img1.fpassets.com/is/image/FreePeople/36322261_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (276, 64, 'http://img1.fpassets.com/is/image/FreePeople/36322261_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (277, 64, 'http://img3.fpassets.com/is/image/FreePeople/36322261_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (278, 64, 'http://img1.fpassets.com/is/image/FreePeople/36322261_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (279, 64, 'http://img1.fpassets.com/is/image/FreePeople/36322261_040_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (280, 64, 'http://img4.fpassets.com/is/image/FreePeople/36322261_040_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (64, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (64, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (64, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (64, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (64, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (64, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (64, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (64, 3, 3, True);


INSERT INTO category (id, name)
VALUES (14, 'Pants');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (63, '35847474', 1, 14, 'Minna Pant', 'American made wide leg wrap culottes featuring a hook closure and zip fly. Adjustable tie belt.<br/>*73% Rayon</br>*27% Polyester</br>*Made in the USA<br/>Measurements for 6:</br>Waist: 32 in = 81 1/4 cm</br>Hips: 40 in = 101 1/2 cm</br>Rise: 10 1/2 in = 26 3/4 cm</br>Inseam: 19 1/2 in = 49 1/2 cm', 'http://www.freepeople.com/clothes-pants/minna-pant/', 155.52, 155.52, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (65, 63, '', 'Taupe', 'http://img3.fpassets.com/is/image/FreePeople/35847474_023_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (281, 65, 'http://img2.fpassets.com/is/image/FreePeople/35847474_023_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (282, 65, 'http://img3.fpassets.com/is/image/FreePeople/35847474_023_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (283, 65, 'http://img3.fpassets.com/is/image/FreePeople/35847474_023_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (284, 65, 'http://img2.fpassets.com/is/image/FreePeople/35847474_023_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (285, 65, 'http://img5.fpassets.com/is/image/FreePeople/35847474_023_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '0');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '2');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '4');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (65, '12');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (65, 1, 1, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (66, 63, '', 'Blue', 'http://img3.fpassets.com/is/image/FreePeople/35847474_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (286, 66, 'http://img2.fpassets.com/is/image/FreePeople/35847474_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (287, 66, 'http://img2.fpassets.com/is/image/FreePeople/35847474_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (288, 66, 'http://img2.fpassets.com/is/image/FreePeople/35847474_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (289, 66, 'http://img3.fpassets.com/is/image/FreePeople/35847474_040_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (290, 66, 'http://img2.fpassets.com/is/image/FreePeople/35847474_040_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '0');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '2');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '4');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (66, '12');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (66, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (67, 63, '', 'Coral', 'http://img1.fpassets.com/is/image/FreePeople/35847474_085_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (291, 67, 'http://img1.fpassets.com/is/image/FreePeople/35847474_085_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (292, 67, 'http://img5.fpassets.com/is/image/FreePeople/35847474_085_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (293, 67, 'http://img2.fpassets.com/is/image/FreePeople/35847474_085_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (294, 67, 'http://img1.fpassets.com/is/image/FreePeople/35847474_085_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (295, 67, 'http://img2.fpassets.com/is/image/FreePeople/35847474_085_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '0');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '2');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '4');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (67, '12');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (67, 3, 3, True);


INSERT INTO category (id, name)
VALUES (15, 'Skirts');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (64, '35706399', 1, 15, 'Santa Teresa Skirt', 'Artisan handcrafted, this statement-making maxi skirt features a multi-color diamond design. Concealed button-down front with sartorial folded waistband. Fully lined.</br>*By Carolina K</br>*Carolina K was created by Argentinian fashion designer and musician Carolina Kleinman. With a background in design, music, yoga, dance, and photography, Carolina showcases these eclectic interests to resonate throughout her collections. Inspired by world travels across Latin America, and many other destinations, Carolina finds her most influential creativity from indigenous cultures, markets, history, and music.</br>**Please Note: Due to its handcrafted nature, each garment is slightly unique.<br/>*100% Cotton Silk</br>*Hand Wash or Dry Clean</br>*Import<br/>Measurements for Small:</br>Waist: 26 1/2 in = 67 1/4 cm</br>Length: 38 in = 96 1/2 cm', 'http://www.freepeople.com/clothes-skirts/santa-teresa-skirt/', 277.02, 277.02, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (68, 64, '', 'Diamonds Multi', 'http://img1.fpassets.com/is/image/FreePeople/35706399_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (296, 68, 'http://img1.fpassets.com/is/image/FreePeople/35706399_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (297, 68, 'http://img5.fpassets.com/is/image/FreePeople/35706399_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (298, 68, 'http://img5.fpassets.com/is/image/FreePeople/35706399_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (299, 68, 'http://img1.fpassets.com/is/image/FreePeople/35706399_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (300, 68, 'http://img5.fpassets.com/is/image/FreePeople/35706399_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (68, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (68, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (68, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (68, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (68, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (68, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (68, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (68, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (65, '30679971', 1, 8, 'Rendering Suede Clog', 'Open toe strappy leather clogs. Crisscross ankle straps with brass buckles sit atop of contrasting leather with perforated design. Grainy wooden heels with comfortable padded insoles and treaded rubber soles.</br>*By Free People</br>**Please Note: The wooden bottoms are pictured incorrectly in the grey color way’s lead image. They are a grainy wood, not stained grey.<br/>*Leather</br>*Wood</br>*Made in Spain<br/>Measurements:</br>Platform: 1 3/8”= 4 cm Heel: 3 1/2”= 9 cm', 'http://www.freepeople.com/shoes-clogs/rendering-suede-clog-30679971/', 204.12, 204.12, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (69, 65, '', 'Tan Suede', 'http://img2.fpassets.com/is/image/FreePeople/30679971_024_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (301, 69, 'http://img1.fpassets.com/is/image/FreePeople/30679971_024_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (302, 69, 'http://img1.fpassets.com/is/image/FreePeople/30679971_024_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (303, 69, 'http://img3.fpassets.com/is/image/FreePeople/30679971_024_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (304, 69, 'http://img5.fpassets.com/is/image/FreePeople/30679971_024_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (305, 69, 'http://img2.fpassets.com/is/image/FreePeople/30679971_024_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (306, 69, 'http://img3.fpassets.com/is/image/FreePeople/30679971_024_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (69, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (69, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (70, 65, '', 'Black Suede', 'http://img5.fpassets.com/is/image/FreePeople/30679971_002_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (307, 70, 'http://img2.fpassets.com/is/image/FreePeople/30679971_002_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (308, 70, 'http://img2.fpassets.com/is/image/FreePeople/30679971_002_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (309, 70, 'http://img3.fpassets.com/is/image/FreePeople/30679971_002_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (310, 70, 'http://img2.fpassets.com/is/image/FreePeople/30679971_002_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (311, 70, 'http://img5.fpassets.com/is/image/FreePeople/30679971_002_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (312, 70, 'http://img4.fpassets.com/is/image/FreePeople/30679971_002_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (70, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (70, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (66, '36029577', 1, 8, 'Calvina Ankle Boot', 'Super soft and luxe handmade Italian leather ankle boots featuring a rounded toe and exposed stitching details. Exposed back zip for an easy on/off. Stacked wooden heel.</br>*By Peter Nappi</br>*Designed in Nashville and handmade in Italy, Peter Nappi premium leather footwear and goods are a distinctive blend of Italian heritage and American individualism. Each piece is meant to be both loved and lived in, wearing beautifully with time and age as it takes on the signs of a life well-travelled.<br/>*Leather</br>*Made in Italy<br/>Measurements:</br>Heel: 1 in = 2 1/2 cm</br>Shaft: 4 3/4 in = 12 cm', 'http://www.freepeople.com/shoes-boots/calvina-ankle-boot/', 722.91, 722.91, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (71, 66, '', 'Black', 'http://img2.fpassets.com/is/image/FreePeople/36029577_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (313, 71, 'http://img3.fpassets.com/is/image/FreePeople/36029577_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (314, 71, 'http://img3.fpassets.com/is/image/FreePeople/36029577_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (315, 71, 'http://img1.fpassets.com/is/image/FreePeople/36029577_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (316, 71, 'http://img4.fpassets.com/is/image/FreePeople/36029577_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (317, 71, 'http://img4.fpassets.com/is/image/FreePeople/36029577_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (318, 71, 'http://img1.fpassets.com/is/image/FreePeople/36029577_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (71, '41 EURO');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (71, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (67, '35516681', 1, 8, 'Copper Vail Slide Sandal', 'Leather sandals with three-strap design and allover mixed metal embellishment, with stud detailing for a modern rugged shine. Adjustable buckle closures.</br>*By faryl robin + Free People<br/>*Leather</br>*Import<br/>', 'http://www.freepeople.com/shoes-sandals/copper-vail-slide-sandal/', 240.57, 240.57, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (72, 67, '', 'Natural', 'http://img3.fpassets.com/is/image/FreePeople/35516681_111_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (319, 72, 'http://img4.fpassets.com/is/image/FreePeople/35516681_111_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (320, 72, 'http://img3.fpassets.com/is/image/FreePeople/35516681_111_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (321, 72, 'http://img4.fpassets.com/is/image/FreePeople/35516681_111_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (322, 72, 'http://img1.fpassets.com/is/image/FreePeople/35516681_111_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (323, 72, 'http://img4.fpassets.com/is/image/FreePeople/35516681_111_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (72, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (72, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (68, '36252948', 1, 8, 'FA-33 Trainer', 'Asics FA-33 trainers with FluidAxis technology. Breathable performance mesh uppers with reflective logo for visibility. Textured rubber soles.</br>*By Asics<br/>*Textile Uppers</br>*Rubber Soles</br>*Import<br/>', 'http://www.freepeople.com/shoes-sneakers/fa-33-trainer-36252948/', 133.65, 133.65, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (73, 68, '', 'Powder Blue', 'http://img1.fpassets.com/is/image/FreePeople/36252948_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (324, 73, 'http://img5.fpassets.com/is/image/FreePeople/36252948_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (325, 73, 'http://img4.fpassets.com/is/image/FreePeople/36252948_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (326, 73, 'http://img4.fpassets.com/is/image/FreePeople/36252948_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (327, 73, 'http://img3.fpassets.com/is/image/FreePeople/36252948_040_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (328, 73, 'http://img2.fpassets.com/is/image/FreePeople/36252948_040_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (73, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (73, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (73, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (73, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (73, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (73, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (73, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (73, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (73, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (73, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (74, 68, '', 'Coral', 'http://img4.fpassets.com/is/image/FreePeople/36252948_085_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (329, 74, 'http://img2.fpassets.com/is/image/FreePeople/36252948_085_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (330, 74, 'http://img3.fpassets.com/is/image/FreePeople/36252948_085_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (331, 74, 'http://img5.fpassets.com/is/image/FreePeople/36252948_085_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (332, 74, 'http://img5.fpassets.com/is/image/FreePeople/36252948_085_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (333, 74, 'http://img4.fpassets.com/is/image/FreePeople/36252948_085_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (334, 74, 'http://img3.fpassets.com/is/image/FreePeople/36252948_085_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (74, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (74, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (74, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (74, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (74, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (74, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (74, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (74, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (74, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (74, 1, 1, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (69, '35276427', 1, 8, 'Mila Embriodered Moccasin', 'Suede moccasin booties featuring embroidery detailing and fringe accents around the ankle. Textured rubber sole.</br>*By Sam Edelman<br/>*Leather</br>*Rubber</br>*Import<br/>Measurements:</br>Shaft: 6 3/4 in = 17 1/4 cm', 'http://www.freepeople.com/shoes-moccasins/mila-embriodered-moccasin/', 230.85, 230.85, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (75, 69, '', 'Whiskey', 'http://img3.fpassets.com/is/image/FreePeople/35276427_020_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (335, 75, 'http://img3.fpassets.com/is/image/FreePeople/35276427_020_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (336, 75, 'http://img3.fpassets.com/is/image/FreePeople/35276427_020_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (337, 75, 'http://img4.fpassets.com/is/image/FreePeople/35276427_020_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (338, 75, 'http://img2.fpassets.com/is/image/FreePeople/35276427_020_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (339, 75, 'http://img4.fpassets.com/is/image/FreePeople/35276427_020_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (75, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (75, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (76, 69, '', 'Tan Suede ', 'http://img1.fpassets.com/is/image/FreePeople/35276427_023_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (340, 76, 'http://img3.fpassets.com/is/image/FreePeople/35276427_023_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (341, 76, 'http://img2.fpassets.com/is/image/FreePeople/35276427_023_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (342, 76, 'http://img5.fpassets.com/is/image/FreePeople/35276427_023_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (343, 76, 'http://img2.fpassets.com/is/image/FreePeople/35276427_023_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (344, 76, 'http://img2.fpassets.com/is/image/FreePeople/35276427_023_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (345, 76, 'http://img2.fpassets.com/is/image/FreePeople/35276427_023_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (76, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (76, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (70, '35824259', 1, 8, 'Lisbon Flat', 'Distressed leather slip-on flats featuring a contrast cotton crochet trim. Open sides.</br>*By Free People</br>*Artisan crafted from fine leathers and premium materials, FP Collection shoes are coveted for their signature vintage aesthetic.<br/>*Leather</br>*Trim: Cotton</br>*Import<br/>', 'http://www.freepeople.com/shoes-flats-loafers/lisbon-flat/', 119.07, 119.07, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (77, 70, '', 'Black', 'http://img3.fpassets.com/is/image/FreePeople/35824259_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (346, 77, 'http://img4.fpassets.com/is/image/FreePeople/35824259_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (347, 77, 'http://img1.fpassets.com/is/image/FreePeople/35824259_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (348, 77, 'http://img1.fpassets.com/is/image/FreePeople/35824259_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (349, 77, 'http://img2.fpassets.com/is/image/FreePeople/35824259_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (350, 77, 'http://img2.fpassets.com/is/image/FreePeople/35824259_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (351, 77, 'http://img4.fpassets.com/is/image/FreePeople/35824259_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (77, '41 EURO');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (77, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (78, 70, '', 'Nude', 'http://img4.fpassets.com/is/image/FreePeople/35824259_013_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (352, 78, 'http://img4.fpassets.com/is/image/FreePeople/35824259_013_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (353, 78, 'http://img3.fpassets.com/is/image/FreePeople/35824259_013_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (354, 78, 'http://img5.fpassets.com/is/image/FreePeople/35824259_013_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (355, 78, 'http://img4.fpassets.com/is/image/FreePeople/35824259_013_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (356, 78, 'http://img1.fpassets.com/is/image/FreePeople/35824259_013_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (357, 78, 'http://img4.fpassets.com/is/image/FreePeople/35824259_013_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (78, '41 EURO');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (78, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (71, '35276575', 1, 8, 'Nightshade Heel', 'Sexy and strappy leather heels featuring an embossed metallic toe strap. Adjustable ankle strap with buckle detailing.</br>*By Sam Edelman<br/>*Leather</br>*Import<br/>Measurements:</br>Heel: 5 in = 12 3/4 cm</br>Shaft: 3 1/4 in = 8 1/4 cm', 'http://www.freepeople.com/shoes-heels-wedges/nightshade-heel/', 157.95, 157.95, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (79, 71, '', 'Nude', 'http://img5.fpassets.com/is/image/FreePeople/35276575_013_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (358, 79, 'http://img4.fpassets.com/is/image/FreePeople/35276575_013_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (359, 79, 'http://img1.fpassets.com/is/image/FreePeople/35276575_013_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (360, 79, 'http://img4.fpassets.com/is/image/FreePeople/35276575_013_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (361, 79, 'http://img5.fpassets.com/is/image/FreePeople/35276575_013_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (362, 79, 'http://img1.fpassets.com/is/image/FreePeople/35276575_013_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (363, 79, 'http://img5.fpassets.com/is/image/FreePeople/35276575_013_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (79, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (79, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (80, 71, '', 'Black', 'http://img3.fpassets.com/is/image/FreePeople/35276575_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (364, 80, 'http://img2.fpassets.com/is/image/FreePeople/35276575_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (365, 80, 'http://img3.fpassets.com/is/image/FreePeople/35276575_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (366, 80, 'http://img3.fpassets.com/is/image/FreePeople/35276575_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (367, 80, 'http://img1.fpassets.com/is/image/FreePeople/35276575_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (368, 80, 'http://img3.fpassets.com/is/image/FreePeople/35276575_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (369, 80, 'http://img2.fpassets.com/is/image/FreePeople/35276575_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '6');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '7');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '9');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (80, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (80, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (72, '35822287', 1, 8, 'Lace Namaste Yoga Sock', 'These barely there cotton yoga socks with cutouts provide a barefoot experience. With non-slip grip bottoms and half-toe design, they’re perfect for all shoeless activities like: barre, Pilates, yoga, and dance. Features a super cute crochet ruffle top.</br>*By toesox<br/>*90% Cotton</br>*8% Spandex</br>*2% Rubber</br>*Machine Wash</br>*Import<br/>', 'http://www.freepeople.com/accessories-socks/lace-namaste-yoga-sock/', 21.87, 21.87, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (81, 72, '', 'Sweet Pea', 'http://img5.fpassets.com/is/image/FreePeople/35822287_066_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (370, 81, 'http://img4.fpassets.com/is/image/FreePeople/35822287_066_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (371, 81, 'http://img4.fpassets.com/is/image/FreePeople/35822287_066_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (372, 81, 'http://img3.fpassets.com/is/image/FreePeople/35822287_066_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (373, 81, 'http://img3.fpassets.com/is/image/FreePeople/35822287_066_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (81, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (81, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (81, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (81, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (82, 72, '', 'Black', 'http://img2.fpassets.com/is/image/FreePeople/35822287_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (374, 82, 'http://img2.fpassets.com/is/image/FreePeople/35822287_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (375, 82, 'http://img2.fpassets.com/is/image/FreePeople/35822287_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (376, 82, 'http://img4.fpassets.com/is/image/FreePeople/35822287_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (377, 82, 'http://img1.fpassets.com/is/image/FreePeople/35822287_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (82, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (82, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (82, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (82, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (83, 72, '', 'Daffodil', 'http://img1.fpassets.com/is/image/FreePeople/35822287_072_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (378, 83, 'http://img5.fpassets.com/is/image/FreePeople/35822287_072_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (379, 83, 'http://img2.fpassets.com/is/image/FreePeople/35822287_072_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (380, 83, 'http://img1.fpassets.com/is/image/FreePeople/35822287_072_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (381, 83, 'http://img5.fpassets.com/is/image/FreePeople/35822287_072_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (83, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (83, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (83, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (83, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (73, '34216911', 1, 8, 'Medallion Slipper', 'Beautiful handmade leather bed slippers with intricate cutwork design. Cushioned heels.</br>*By Z & L<br/>*Leather</br>*Import<br/>', 'http://www.freepeople.com/shoes-slippers/medallion-slipper/', 58.32, 58.32, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (84, 73, '', 'Black', 'http://img3.fpassets.com/is/image/FreePeople/34216911_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (382, 84, 'http://img3.fpassets.com/is/image/FreePeople/34216911_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (383, 84, 'http://img3.fpassets.com/is/image/FreePeople/34216911_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (384, 84, 'http://img2.fpassets.com/is/image/FreePeople/34216911_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (385, 84, 'http://img4.fpassets.com/is/image/FreePeople/34216911_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (386, 84, 'http://img4.fpassets.com/is/image/FreePeople/34216911_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (387, 84, 'http://img1.fpassets.com/is/image/FreePeople/34216911_001_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (388, 84, 'http://img3.fpassets.com/is/image/FreePeople/34216911_001_z?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (84, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (84, 0, 0, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (85, 73, '', 'Blue', 'http://img3.fpassets.com/is/image/FreePeople/34216911_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (389, 85, 'http://img4.fpassets.com/is/image/FreePeople/34216911_040_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (390, 85, 'http://img4.fpassets.com/is/image/FreePeople/34216911_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (391, 85, 'http://img1.fpassets.com/is/image/FreePeople/34216911_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (392, 85, 'http://img4.fpassets.com/is/image/FreePeople/34216911_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (393, 85, 'http://img2.fpassets.com/is/image/FreePeople/34216911_040_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (85, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (85, 1, 1, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (86, 73, '', 'Red', 'http://img3.fpassets.com/is/image/FreePeople/34216911_060_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (394, 86, 'http://img4.fpassets.com/is/image/FreePeople/34216911_060_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (395, 86, 'http://img1.fpassets.com/is/image/FreePeople/34216911_060_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (396, 86, 'http://img1.fpassets.com/is/image/FreePeople/34216911_060_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (397, 86, 'http://img4.fpassets.com/is/image/FreePeople/34216911_060_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (398, 86, 'http://img3.fpassets.com/is/image/FreePeople/34216911_060_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (399, 86, 'http://img1.fpassets.com/is/image/FreePeople/34216911_060_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (400, 86, 'http://img1.fpassets.com/is/image/FreePeople/34216911_060_z?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (86, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (86, 0, 0, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (87, 73, '', 'White', 'http://img3.fpassets.com/is/image/FreePeople/34216911_010_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (401, 87, 'http://img3.fpassets.com/is/image/FreePeople/34216911_010_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (402, 87, 'http://img4.fpassets.com/is/image/FreePeople/34216911_010_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (403, 87, 'http://img2.fpassets.com/is/image/FreePeople/34216911_010_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (404, 87, 'http://img4.fpassets.com/is/image/FreePeople/34216911_010_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (405, 87, 'http://img1.fpassets.com/is/image/FreePeople/34216911_010_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '36 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '37 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '38 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '39 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '40 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (87, '41 Euro');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (87, 0, 0, False);


INSERT INTO category (id, name)
VALUES (16, 'Intimates');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (74, '35077577', 1, 16, 'Wild Roses Gallon Racerback', 'Romantic and delicate, stretchy floral lace racerback bralette with sheer mesh lining and scalloped edges.</br>*Intimately<br/>*47% Nylon</br>*41% Rayon</br>*12% Spandex</br>*Hand Wash Cold</br>*Import<br/>', 'http://www.freepeople.com/intimates-bras/wild-roses-gallon-racerback/', 46.17, 46.17, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (88, 74, '', 'Peach Pine Combo', 'http://img3.fpassets.com/is/image/FreePeople/35077577_085_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (406, 88, 'http://img5.fpassets.com/is/image/FreePeople/35077577_085_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (407, 88, 'http://img5.fpassets.com/is/image/FreePeople/35077577_085_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (408, 88, 'http://img3.fpassets.com/is/image/FreePeople/35077577_085_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (409, 88, 'http://img2.fpassets.com/is/image/FreePeople/35077577_085_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (410, 88, 'http://img1.fpassets.com/is/image/FreePeople/35077577_085_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (411, 88, 'http://img1.fpassets.com/is/image/FreePeople/35077577_085_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (88, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (88, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (88, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (88, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (88, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (88, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (88, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (88, 1, 1, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (89, 74, '', 'Black Rust Combo', 'http://img2.fpassets.com/is/image/FreePeople/35077577_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (412, 89, 'http://img3.fpassets.com/is/image/FreePeople/35077577_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (413, 89, 'http://img5.fpassets.com/is/image/FreePeople/35077577_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (414, 89, 'http://img3.fpassets.com/is/image/FreePeople/35077577_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (415, 89, 'http://img5.fpassets.com/is/image/FreePeople/35077577_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (416, 89, 'http://img1.fpassets.com/is/image/FreePeople/35077577_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (417, 89, 'http://img1.fpassets.com/is/image/FreePeople/35077577_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (89, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (89, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (89, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (89, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (89, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (89, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (89, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (89, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (90, 74, '', 'Periwinkle Mustard', 'http://img1.fpassets.com/is/image/FreePeople/35077577_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (418, 90, 'http://img1.fpassets.com/is/image/FreePeople/35077577_040_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (419, 90, 'http://img5.fpassets.com/is/image/FreePeople/35077577_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (420, 90, 'http://img2.fpassets.com/is/image/FreePeople/35077577_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (421, 90, 'http://img1.fpassets.com/is/image/FreePeople/35077577_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (422, 90, 'http://img5.fpassets.com/is/image/FreePeople/35077577_040_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (90, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (90, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (90, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (90, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (90, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (90, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (90, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (90, 0, 0, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (91, 74, '', 'Teal Cranberry Combo', 'http://img4.fpassets.com/is/image/FreePeople/35077577_042_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (423, 91, 'http://img4.fpassets.com/is/image/FreePeople/35077577_042_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (424, 91, 'http://img1.fpassets.com/is/image/FreePeople/35077577_042_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (425, 91, 'http://img1.fpassets.com/is/image/FreePeople/35077577_042_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (426, 91, 'http://img4.fpassets.com/is/image/FreePeople/35077577_042_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (427, 91, 'http://img4.fpassets.com/is/image/FreePeople/35077577_042_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (91, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (91, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (91, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (91, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (91, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (91, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (91, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (91, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (92, 74, '', 'PINK/ROSE', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (428, 92, 'http://img4.fpassets.com/is/image/FreePeople/35077577_066_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (429, 92, 'http://img4.fpassets.com/is/image/FreePeople/35077577_066_0?$detail-item$');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (75, '36072783', 1, 16, 'Falling Marigold Hipster', 'Lace hipster undies with scalloped edges in a colorful floral print. Designed near the sunny beaches of Southern California.</br>*By Private Arts<br/>*92% Polyester</br>*8% Spandex</br>*Hand Wash Cold</br>*Import<br/>Measurements for Small:</br>Rise: 8 1/2 in = 21 1/2 cm', 'http://www.freepeople.com/intimates-undies/falling-marigold-hipster/', 21.87, 21.87, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (93, 75, '', 'Falling Marigold', 'http://img3.fpassets.com/is/image/FreePeople/36072783_070_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (430, 93, 'http://img4.fpassets.com/is/image/FreePeople/36072783_070_0?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (93, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (93, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (93, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (93, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (93, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (93, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (76, '35892975', 1, 16, 'Extreme T-back Seamless Cami', 'American made in our Signature Seamless fabric, this stretchy ribbed tank features an extreme T-back silhouette and high neck.</br>*Intimately<br/>*92% Nylon</br>*8% Spandex</br>*Machine Wash Cold</br>*Made in the USA<br/>Measurements for XS/S:</br>Bust: 20 in = 50 3/4 cm</br>Length: 23 in = 58 1/2 cm', 'http://www.freepeople.com/intimates-tops/extreme-t-back-seamless-cami/', 34.02, 34.02, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (94, 76, '', 'Very Berry', 'http://img4.fpassets.com/is/image/FreePeople/35892975_061_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (431, 94, 'http://img2.fpassets.com/is/image/FreePeople/35892975_061_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (432, 94, 'http://img3.fpassets.com/is/image/FreePeople/35892975_061_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (433, 94, 'http://img4.fpassets.com/is/image/FreePeople/35892975_061_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (434, 94, 'http://img5.fpassets.com/is/image/FreePeople/35892975_061_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (435, 94, 'http://img4.fpassets.com/is/image/FreePeople/35892975_061_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (436, 94, 'http://img2.fpassets.com/is/image/FreePeople/35892975_061_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (94, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (94, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (94, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (94, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (95, 76, '', 'Black', 'http://img5.fpassets.com/is/image/FreePeople/35892975_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (437, 95, 'http://img3.fpassets.com/is/image/FreePeople/35892975_001_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (438, 95, 'http://img2.fpassets.com/is/image/FreePeople/35892975_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (439, 95, 'http://img5.fpassets.com/is/image/FreePeople/35892975_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (440, 95, 'http://img1.fpassets.com/is/image/FreePeople/35892975_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (441, 95, 'http://img4.fpassets.com/is/image/FreePeople/35892975_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (95, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (95, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (95, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (95, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (77, '35450808', 1, 16, 'Boys Who Like Girls Boxer', 'Lounge around in these super cute printed cotton boxer shorts featuring crochet trim. Elastic waistband for an easy comfy fit.</br>*Intimately<br/>*100% Cotton</br>*Hand Wash Cold</br>*Import<br/>Measurements for Small:</br>Waist: 28 in = 35 1/2 cm</br>Hips: 42 in = 106 3/4 cm</br>Rise: 8 3/4 in = 22 1/4 cm</br>Inseam: 1 1/2 in = 3 3/4 cm', 'http://www.freepeople.com/intimates-bottoms/boys-who-like-girls-boxer/', 34.02, 34.02, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (96, 77, '', 'Paisley', 'http://img5.fpassets.com/is/image/FreePeople/35450808_000_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (442, 96, 'http://img1.fpassets.com/is/image/FreePeople/35450808_000_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (443, 96, 'http://img5.fpassets.com/is/image/FreePeople/35450808_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (444, 96, 'http://img5.fpassets.com/is/image/FreePeople/35450808_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (445, 96, 'http://img5.fpassets.com/is/image/FreePeople/35450808_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (446, 96, 'http://img5.fpassets.com/is/image/FreePeople/35450808_000_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (447, 96, 'http://img2.fpassets.com/is/image/FreePeople/35450808_000_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (96, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (96, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (96, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (96, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (96, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (96, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (96, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (96, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (78, '35775501', 1, 16, 'Tight Sleep Set', 'American made in our Signature Seamless fabric, this stretchy ribbed shorts set features a cropped tank and layering shorts. A layering essential for all your favorite styles that bare a bit more.</br></br>*Intimately<br/>*92% Nylon</br>*8% Spandex</br>*Machine Wash Cold</br>*Made in the USA<br/>Measurements for XS/S:</br>Top Measurements:</br>Bust: 21 in = 53 1/4 cm</br>Length: 15 1/4 in = 38 3/4 cm</br>Shorts Measurement:</br>Waist: 16 1/2 in = 42 cm</br>Inseam: 4 1/2 in = 11 1/2 cm</br>Rise: 7 1/2 in = 19 cm', 'http://www.freepeople.com/intimates-robes-nighties/tight-sleep-set/', 36.45, 36.45, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (97, 78, '', 'Black', 'http://img4.fpassets.com/is/image/FreePeople/35775501_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (448, 97, 'http://img3.fpassets.com/is/image/FreePeople/35775501_001_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (449, 97, 'http://img1.fpassets.com/is/image/FreePeople/35775501_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (450, 97, 'http://img5.fpassets.com/is/image/FreePeople/35775501_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (451, 97, 'http://img1.fpassets.com/is/image/FreePeople/35775501_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (452, 97, 'http://img1.fpassets.com/is/image/FreePeople/35775501_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (453, 97, 'http://img5.fpassets.com/is/image/FreePeople/35775501_001_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (97, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (97, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (97, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (97, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (98, 78, '', 'Purple', 'http://img1.fpassets.com/is/image/FreePeople/35775501_050_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (454, 98, 'http://img3.fpassets.com/is/image/FreePeople/35775501_050_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (455, 98, 'http://img2.fpassets.com/is/image/FreePeople/35775501_050_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (456, 98, 'http://img4.fpassets.com/is/image/FreePeople/35775501_050_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (457, 98, 'http://img5.fpassets.com/is/image/FreePeople/35775501_050_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (458, 98, 'http://img2.fpassets.com/is/image/FreePeople/35775501_050_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (98, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (98, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (98, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (98, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (79, '35776699', 1, 16, 'Seamless Tube Bodysuit', 'American made, from our Signature Seamless fabric, this smooth and stretchy tube-style bodysuit features a pinch neckline and built-in bra. A layering essential, fit for your favorite styles that bare a bit more.</br></br>*Intimately<br/>*92% Nylon</br>*8% Spandex</br>*Hand Wash Cold</br>*Made in USA<br/>Measurements for XS/S:</br>Bust: 21 in = 53 1/4 cm', 'http://www.freepeople.com/intimates-bodysuits-rompers/seamless-tube-bodysuit/', 46.17, 46.17, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (99, 79, '', 'BLK/NOIR', 'http://img2.fpassets.com/is/image/FreePeople/35776699_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (459, 99, 'http://img2.fpassets.com/is/image/FreePeople/35776699_001_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (460, 99, 'http://img4.fpassets.com/is/image/FreePeople/35776699_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (461, 99, 'http://img4.fpassets.com/is/image/FreePeople/35776699_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (462, 99, 'http://img2.fpassets.com/is/image/FreePeople/35776699_001_c?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (99, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (99, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (99, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (99, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (100, 79, '', 'Cranberry', 'http://img1.fpassets.com/is/image/FreePeople/35776699_060_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (463, 100, 'http://img2.fpassets.com/is/image/FreePeople/35776699_060_t?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (464, 100, 'http://img3.fpassets.com/is/image/FreePeople/35776699_060_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (465, 100, 'http://img1.fpassets.com/is/image/FreePeople/35776699_060_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (466, 100, 'http://img4.fpassets.com/is/image/FreePeople/35776699_060_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (467, 100, 'http://img2.fpassets.com/is/image/FreePeople/35776699_060_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (100, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (100, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (100, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (100, 3, 3, True);


INSERT INTO category (id, name)
VALUES (17, 'Swim');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (80, '35876531', 1, 17, 'Printed Haley Top', 'Printed triangle bikini top featuring adjustable crisscross straps in back, that can reverses to a solid. American made.</br>*By L *Space</br></br>			</br>				Printed low rise bikini bottoms featuring side cutouts. Reverses to a solid. American made.</br>*By L *Space<br/>*80% Nylon</br>*20% Spandex</br>*Hand Wash Cold</br>*Made in USA</br>*80% Nylon</br>*20% Spandex</br>*Hand Wash Cold</br>*Made in USA<br/>Measurements:</br>Rise: 7 1/4 in = 18 1/2 cm', 'http://www.freepeople.com/swim-bikini-tops/printed-haley-top/', 104.49, 104.49, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (101, 80, '', 'Mayan Print', 'http://img2.fpassets.com/is/image/FreePeople/35876531_000_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (468, 101, 'http://img1.fpassets.com/is/image/FreePeople/35876531_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (469, 101, 'http://img1.fpassets.com/is/image/FreePeople/35876531_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (470, 101, 'http://img5.fpassets.com/is/image/FreePeople/35876531_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (471, 101, 'http://img2.fpassets.com/is/image/FreePeople/35876531_000_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (472, 101, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (473, 101, 'http://img4.fpassets.com/is/image/FreePeople/35876580_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (474, 101, 'http://img1.fpassets.com/is/image/FreePeople/35876580_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (475, 101, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (476, 101, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (101, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (101, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (101, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (101, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (101, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (101, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (101, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (101, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (81, '35876580', 1, 17, 'Low Down Printed Bottom', 'Printed low rise bikini bottoms featuring side cutouts. Reverses to a solid. American made.</br>*By L *Space</br></br>			</br>				Printed triangle bikini top featuring adjustable crisscross straps in back, that can reverses to a solid. American made.</br>*By L *Space<br/>*80% Nylon</br>*20% Spandex</br>*Hand Wash Cold</br>*Made in USA</br>*80% Nylon</br>*20% Spandex</br>*Hand Wash Cold</br>*Made in USA<br/>Measurements:</br>Rise: 7 1/4 in = 18 1/2 cm', 'http://www.freepeople.com/swim-bikini-bottoms/low-down-printed-bottom/', 93.55, 93.55, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (102, 81, '', 'Mayan Print', 'http://img2.fpassets.com/is/image/FreePeople/35876580_000_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (477, 102, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (478, 102, 'http://img4.fpassets.com/is/image/FreePeople/35876580_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (479, 102, 'http://img1.fpassets.com/is/image/FreePeople/35876580_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (480, 102, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (481, 102, 'http://img3.fpassets.com/is/image/FreePeople/35876580_000_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (482, 102, 'http://img1.fpassets.com/is/image/FreePeople/35876531_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (483, 102, 'http://img1.fpassets.com/is/image/FreePeople/35876531_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (484, 102, 'http://img5.fpassets.com/is/image/FreePeople/35876531_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (485, 102, 'http://img2.fpassets.com/is/image/FreePeople/35876531_000_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (102, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (102, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (102, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (102, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (102, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (102, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (102, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (102, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (82, '35858992', 1, 17, '2mm Shorty', 'A wetsuit to keep you looking cool and feeling cozy. Modern mixed print design, featuring solid bottom, celestial tie dye center, and sporty striped top. Easy zip front in a swim silhouette.</br>*By Kassia Surf<br/>*80% Neoprene</br>*20% Nylon</br>*Hand Wash Cold</br>*Import<br/>Measurements for Medium:</br>Bust: 30 in = 76 1/4 cm</br>Waist: 26 in = 66 cm', 'http://www.freepeople.com/swim-one-piece/2mm-shorty/', 370.57, 370.57, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (103, 82, '', 'Blue', 'http://img5.fpassets.com/is/image/FreePeople/35858992_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (486, 103, 'http://img3.fpassets.com/is/image/FreePeople/35858992_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (487, 103, 'http://img3.fpassets.com/is/image/FreePeople/35858992_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (488, 103, 'http://img3.fpassets.com/is/image/FreePeople/35858992_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (489, 103, 'http://img5.fpassets.com/is/image/FreePeople/35858992_040_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (490, 103, 'http://img5.fpassets.com/is/image/FreePeople/35858992_040_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (103, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (103, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (103, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (103, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (103, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (103, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (103, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (103, 4, 4, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (83, '35858927', 1, 17, '2mm La Spring', 'A shorts wetsuit to keep you looking cool and feeling cozy. Tie dye design with an easy zip front and long-sleeve silhouette. Zip pocket at wrist to store the key or small valuable you don’t want to leave ashore.</br>*By Kassia Surf<br/>*80% Neoprene</br>*20% Nylon</br>*Hand Wash Cold</br>*Import<br/>Measurements for Medium:</br>Bust: 30 in = 76 1/4 cm</br>Waist: 26 in = 66 cm</br>Inseam: 3 in = 7 1/2 cm</br>Sleeve Length: 21 1/2 in = 54 1/2 cm', 'http://www.freepeople.com/swim-surfwear/2mm-la-spring/', 510.29, 510.29, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (104, 83, '', 'Green', 'http://img2.fpassets.com/is/image/FreePeople/35858927_030_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (491, 104, 'http://img3.fpassets.com/is/image/FreePeople/35858927_030_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (492, 104, 'http://img2.fpassets.com/is/image/FreePeople/35858927_030_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (493, 104, 'http://img5.fpassets.com/is/image/FreePeople/35858927_030_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (494, 104, 'http://img4.fpassets.com/is/image/FreePeople/35858927_030_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (495, 104, 'http://img4.fpassets.com/is/image/FreePeople/35858927_030_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (496, 104, 'http://img1.fpassets.com/is/image/FreePeople/35858927_030_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (104, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (104, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (104, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (104, 4, 4, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (104, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (104, 4, 4, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (84, '35200948', 1, 17, 'Never Enough Maxi Top', 'Sleeveless maxi top with sheer front, featuring intricate applique and open embroidered design. High side slits and upper back cutout. A modern bohemian style.<br/>*52% Linen</br>*48% Cotton</br>*Contrast: 90% Cotton, 10% Nylon</br>*Hand Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 38 in = 96 1/2 cm</br>Length in Front: 45 in = 114 1/4 cm</br>Length in Back: 53 1/2 in = 136 cm', 'http://www.freepeople.com/cover-ups-sundresses/never-enough-maxi-top/', 179.82, 179.82, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (105, 84, '', 'Black', 'http://img1.fpassets.com/is/image/FreePeople/35200948_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (497, 105, 'http://img5.fpassets.com/is/image/FreePeople/35200948_001_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (498, 105, 'http://img3.fpassets.com/is/image/FreePeople/35200948_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (499, 105, 'http://img4.fpassets.com/is/image/FreePeople/35200948_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (500, 105, 'http://img3.fpassets.com/is/image/FreePeople/35200948_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (501, 105, 'http://img1.fpassets.com/is/image/FreePeople/35200948_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (105, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (105, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (105, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (105, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (105, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (105, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (105, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (105, 1, 1, False);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (106, 84, '', 'Amberglow', 'http://img3.fpassets.com/is/image/FreePeople/35200948_020_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (502, 106, 'http://img4.fpassets.com/is/image/FreePeople/35200948_020_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (503, 106, 'http://img4.fpassets.com/is/image/FreePeople/35200948_020_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (504, 106, 'http://img2.fpassets.com/is/image/FreePeople/35200948_020_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (505, 106, 'http://img2.fpassets.com/is/image/FreePeople/35200948_020_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (106, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (106, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (106, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (106, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (106, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (106, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (106, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (106, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (107, 84, '', 'Ivory', 'http://img3.fpassets.com/is/image/FreePeople/35200948_011_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (506, 107, 'http://img3.fpassets.com/is/image/FreePeople/35200948_011_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (507, 107, 'http://img2.fpassets.com/is/image/FreePeople/35200948_011_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (508, 107, 'http://img2.fpassets.com/is/image/FreePeople/35200948_011_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (509, 107, 'http://img1.fpassets.com/is/image/FreePeople/35200948_011_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (510, 107, 'http://img2.fpassets.com/is/image/FreePeople/35200948_011_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (107, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (107, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (107, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (107, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (107, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (107, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (107, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (107, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (85, '35683663', 1, 17, 'Round Towel', 'The Original Roundie, hand drawn round black and white towel. Fringe trim. Designed in Australia</br>*By The Beach People<br/>*100% Cotton</br>*Import<br/>Measurements:</br>Diameter: 59 in = 150 cm', 'http://www.freepeople.com/beach-day-essentials/round-towel/', 133.65, 133.65, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (108, 85, '', 'Aztec ', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (511, 108, 'http://img4.fpassets.com/is/image/FreePeople/35683663_009_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (512, 108, 'http://img2.fpassets.com/is/image/FreePeople/35683663_009_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (513, 108, 'http://img3.fpassets.com/is/image/FreePeople/35683663_009_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (514, 108, 'http://img5.fpassets.com/is/image/FreePeople/35683663_009_z?$detail-item$');


INSERT INTO category (id, name)
VALUES (18, 'Movement');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (86, '34729202', 1, 18, 'Infinity Legging', 'So-soft cropped activewear leggings with Picot Performance cutouts in an infinity design. Features Performance Seaming and a reflective logo.</br>*By FP Movement</br>*FP Movement is an entirely new activewear collection, designed to nourish your mind, body, and free spirit.<br/>*89% Polyester</br>*11% Spandex</br>*Machine Wash Cold</br>*Import<br/>Measurements for Small:</br>Waist: 26 in = 66 cm</br>Hips: 29 1/2 in = 75 cm</br>Inseam: 22 in = 56 cm</br>Rise: 8 3/4 in = 22 1/4 cm', 'http://www.freepeople.com/fp-movement-yoga/infinity-legging/_/PRODUCTOPTIONIDS/1CA9CD82-941A-40A0-A96B-A0E5FBA63AB9,1CA9CD82-941A-40A0-A96B-A0E5FBA63AB9/', 106.92, 106.92, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (109, 86, '', 'Charcoal / Black', 'http://img4.fpassets.com/is/image/FreePeople/34729202_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (515, 109, 'http://img2.fpassets.com/is/image/FreePeople/34729202_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (516, 109, 'http://img3.fpassets.com/is/image/FreePeople/34729202_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (517, 109, 'http://img4.fpassets.com/is/image/FreePeople/34729202_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (518, 109, 'http://img1.fpassets.com/is/image/FreePeople/34729202_001_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (519, 109, 'http://img5.fpassets.com/is/image/FreePeople/34729202_001_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (520, 109, 'http://img3.fpassets.com/is/image/FreePeople/34729202_001_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (109, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (109, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (109, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (109, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (109, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (109, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (109, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (109, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (110, 86, '', 'Heather Purple ', 'http://img1.fpassets.com/is/image/FreePeople/34729202_050_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (521, 110, 'http://img3.fpassets.com/is/image/FreePeople/34729202_050_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (522, 110, 'http://img3.fpassets.com/is/image/FreePeople/34729202_050_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (523, 110, 'http://img5.fpassets.com/is/image/FreePeople/34729202_050_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (524, 110, 'http://img3.fpassets.com/is/image/FreePeople/34729202_050_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (525, 110, 'http://img5.fpassets.com/is/image/FreePeople/34729202_050_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (526, 110, 'http://img5.fpassets.com/is/image/FreePeople/34729202_050_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (110, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (110, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (110, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (110, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (110, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (110, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (110, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (110, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (87, '35291921', 1, 18, 'Harem Pant', 'Designed with Free-Flow fabric technology to properly ventilate and wick sweat during your toughest workouts, these printed harem pants feature an extreme slouch and fashion print. Tie cuffs and stretchy, smocked back.</br>*By FP Movement + Onzie<br/>*92% Polyester</br>*8% Spandex</br>*Lining: 100% Polyester</br>*Hand or Machine Wash Cold</br>*Made in the USA<br/>Measurements for S/M:</br>Waist: 28 in = 71 cm', 'http://www.freepeople.com/fp-movement-dance/harem-pant/_/PRODUCTOPTIONIDS/0F91D70E-BBA0-4396-9020-974F9E1A04E6,0F91D70E-BBA0-4396-9020-974F9E1A04E6/', 94.77, 94.77, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (111, 87, '', 'Prairie', 'http://img3.fpassets.com/is/image/FreePeople/35291921_000_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (527, 111, 'http://img5.fpassets.com/is/image/FreePeople/35291921_000_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (528, 111, 'http://img4.fpassets.com/is/image/FreePeople/35291921_000_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (529, 111, 'http://img4.fpassets.com/is/image/FreePeople/35291921_000_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (530, 111, 'http://img2.fpassets.com/is/image/FreePeople/35291921_000_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (531, 111, 'http://img2.fpassets.com/is/image/FreePeople/35291921_000_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (532, 111, 'http://img4.fpassets.com/is/image/FreePeople/35291921_000_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (111, 'S/M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (111, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (111, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (111, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (112, 87, '', 'Peach Leopard ', 'http://img1.fpassets.com/is/image/FreePeople/35291921_068_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (533, 112, 'http://img3.fpassets.com/is/image/FreePeople/35291921_068_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (534, 112, 'http://img2.fpassets.com/is/image/FreePeople/35291921_068_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (535, 112, 'http://img1.fpassets.com/is/image/FreePeople/35291921_068_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (536, 112, 'http://img2.fpassets.com/is/image/FreePeople/35291921_068_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (537, 112, 'http://img1.fpassets.com/is/image/FreePeople/35291921_068_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (112, 'S/M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (112, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (112, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (112, 3, 3, True);


INSERT INTO category (id, name)
VALUES (19, 'Sale');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (88, '35430115', 1, 19, 'Mini Paddle Earrings', 'Round dangling earrings with metal etched designs. Hook backs.</br>*By Tiger Mountain<br/>*Import<br/>', 'http://www.freepeople.com/sale-new-sale/mini-paddle-earrings/', 58.32, 36.39, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (113, 88, '', 'Silver', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (538, 113, 'http://img1.fpassets.com/is/image/FreePeople/35430115_007_a?$detail-item$');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (89, '34955823', 1, 19, 'Sleeveless Mixed Print Wrap Tank', 'Cropped to the natural waist, this structured printed wrap tank has an open back and crisscross straps.<br/>*100% Cotton</br>*Machine Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 39 in = 99 cm</br>Length: 21 in = 53 1/4 cm', 'http://www.freepeople.com/sale-sale-tops/s-l-mixed-print-wrap-tank/', 94.77, 60.69, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (114, 89, '', 'Berry Combo', 'http://img5.fpassets.com/is/image/FreePeople/34955823_062_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (539, 114, 'http://img3.fpassets.com/is/image/FreePeople/34955823_062_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (540, 114, 'http://img4.fpassets.com/is/image/FreePeople/34955823_062_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (541, 114, 'http://img1.fpassets.com/is/image/FreePeople/34955823_062_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (542, 114, 'http://img1.fpassets.com/is/image/FreePeople/34955823_062_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (114, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (114, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (114, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (114, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (114, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (114, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (114, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (114, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (90, '34960112', 1, 19, 'Mesh T-back Bodycon Slip', 'Our signature stretchy seamless slip you’ve come to love, with a subtle crinkly texture and modern mesh T-back. An essential layering piece to go underneath your sheer dresses and tunics. American made.<br/>*92% Nylon</br>*8% Spandex</br>*Hand Wash Cold</br>*Made in USA<br/>Measurements for XS/S:</br>Bust: 24 in = 61 cm</br>Length: 28 in = 71 cm', 'http://www.freepeople.com/sale-sale-dresses/mesh-t-back-bodycon-slip/', 58.32, 24.24, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (115, 90, '', 'Plum', 'http://img2.fpassets.com/is/image/FreePeople/34960112_050_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (543, 115, 'http://img3.fpassets.com/is/image/FreePeople/34960112_050_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (544, 115, 'http://img3.fpassets.com/is/image/FreePeople/34960112_050_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (545, 115, 'http://img4.fpassets.com/is/image/FreePeople/34960112_050_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (546, 115, 'http://img2.fpassets.com/is/image/FreePeople/34960112_050_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (115, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (115, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (115, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (115, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (116, 90, '', 'Black', 'http://img2.fpassets.com/is/image/FreePeople/34960112_001_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (547, 116, 'http://img5.fpassets.com/is/image/FreePeople/34960112_001_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (548, 116, 'http://img5.fpassets.com/is/image/FreePeople/34960112_001_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (549, 116, 'http://img4.fpassets.com/is/image/FreePeople/34960112_001_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (550, 116, 'http://img5.fpassets.com/is/image/FreePeople/34960112_001_d?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (116, 'XS/S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (116, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (116, 'M/L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (116, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (91, '35032937', 1, 19, 'Holly Stripe Cardigan', 'Striped sweater-style poncho with a dramatic oversized silhouette and slouchy dropped armholes. An easy and effortless layer with bohemian fringe trim.<br/>*36% Cotton</br>*31% Ramie</br>*24% Viscose</br>*8% Linen</br>*1% Nylon</br>*Dry Clean</br>*Import<br/>Measurements for One Size:</br>Bust: 100 in = 254 cm</br>Length: 35 in = 89 cm', 'http://www.freepeople.com/sale-sale-sweaters/holly-stripe-cardigan/', 204.12, 84.99, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (117, 91, '', 'Oatmeal Combo', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (551, 117, 'http://img2.fpassets.com/is/image/FreePeople/35032937_011_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (552, 117, 'http://img4.fpassets.com/is/image/FreePeople/35032937_011_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (553, 117, 'http://img4.fpassets.com/is/image/FreePeople/35032937_011_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (554, 117, 'http://img3.fpassets.com/is/image/FreePeople/35032937_011_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (555, 117, 'http://img4.fpassets.com/is/image/FreePeople/35032937_011_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (556, 117, 'http://img2.fpassets.com/is/image/FreePeople/35032937_011_e?$detail-item$');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (92, '34927830', 1, 19, 'Slouchy Boyfriend Jacket', 'Oversized slouchy boyfriend jacket in a textured fabric. Two side slip pockets and a double hidden button closure.<br/>*98% Cotton</br>*2% Spandex</br>*Machine Wash Cold</br>*Import<br/>Measurements for Small:</br>Bust: 44 in = 111 3/4 cm</br>Length: 34 in = 86 1/4 cm</br>Sleeve Length: 15 1/4 in = 38 3/4 cm', 'http://www.freepeople.com/sale-sale-jackets-outerwear/cotton-slouchy-byfrd-jkt/', 204.12, 84.99, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (118, 92, '', 'Antique White', 'http://img1.fpassets.com/is/image/FreePeople/34927830_010_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (557, 118, 'http://img5.fpassets.com/is/image/FreePeople/34927830_010_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (558, 118, 'http://img1.fpassets.com/is/image/FreePeople/34927830_010_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (559, 118, 'http://img3.fpassets.com/is/image/FreePeople/34927830_010_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (560, 118, 'http://img3.fpassets.com/is/image/FreePeople/34927830_010_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (561, 118, 'http://img5.fpassets.com/is/image/FreePeople/34927830_010_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (562, 118, 'http://img1.fpassets.com/is/image/FreePeople/34927830_010_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (563, 118, 'http://img5.fpassets.com/is/image/FreePeople/34927830_010_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (118, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (118, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (118, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (118, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (118, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (118, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (118, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (118, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (119, 92, '', 'Warm Grey', 'http://img1.fpassets.com/is/image/FreePeople/34927830_004_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (564, 119, 'http://img1.fpassets.com/is/image/FreePeople/34927830_004_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (565, 119, 'http://img3.fpassets.com/is/image/FreePeople/34927830_004_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (566, 119, 'http://img3.fpassets.com/is/image/FreePeople/34927830_004_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (567, 119, 'http://img2.fpassets.com/is/image/FreePeople/34927830_004_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (568, 119, 'http://img3.fpassets.com/is/image/FreePeople/34927830_004_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (569, 119, 'http://img1.fpassets.com/is/image/FreePeople/34927830_004_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (570, 119, 'http://img5.fpassets.com/is/image/FreePeople/34927830_004_f?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (119, 'XS');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (119, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (119, 'S');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (119, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (119, 'M');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (119, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (119, 'L');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (119, 0, 0, False);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (93, '34951954', 1, 19, 'Hawaiian Sunprint Skinny', 'Inspired by the sun filled Hawaiian Islands, these high waisted printed skinnes are super fun and cute. Traditional five-pocket style with a button closure and zip fly.<br/>*53% Cotton</br>*23% Rayon</br>*22% Polyester</br>*2% Spandex</br>*Machine Wash Cold 	</br>*Import<br/>Measurements for 28:</br>Waist: 29 1/2 in = 75 cm</br>Hips: 35 1/2 in = 90 1/4</br>Rise: 10 1/4 in = 26 cm</br>Inseam: 27 in = 68 1/2 cm', 'http://www.freepeople.com/sale-sale-bottoms/hawaiian-sunprint-skinny/', 94.77, 60.69, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (120, 93, '', 'Sunprint Combo', 'http://img4.fpassets.com/is/image/FreePeople/34951954_040_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (571, 120, 'http://img5.fpassets.com/is/image/FreePeople/34951954_040_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (572, 120, 'http://img5.fpassets.com/is/image/FreePeople/34951954_040_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (573, 120, 'http://img5.fpassets.com/is/image/FreePeople/34951954_040_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (574, 120, 'http://img4.fpassets.com/is/image/FreePeople/34951954_040_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (575, 120, 'http://img1.fpassets.com/is/image/FreePeople/34951954_040_e?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (576, 120, 'http://img4.fpassets.com/is/image/FreePeople/34951954_040_f?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (577, 120, 'http://img3.fpassets.com/is/image/FreePeople/34951954_040_g?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '24');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '25');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '26');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '27');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '28');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '29');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '30');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (120, '31');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (120, 3, 3, True);


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (121, 93, '', 'White Combo', 'http://img5.fpassets.com/is/image/FreePeople/34951954_010_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (578, 121, 'http://img4.fpassets.com/is/image/FreePeople/34951954_010_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (579, 121, 'http://img3.fpassets.com/is/image/FreePeople/34951954_010_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (580, 121, 'http://img3.fpassets.com/is/image/FreePeople/34951954_010_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (581, 121, 'http://img3.fpassets.com/is/image/FreePeople/34951954_010_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (582, 121, 'http://img3.fpassets.com/is/image/FreePeople/34951954_010_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '24');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '25');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '26');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '27');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '28');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '29');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '30');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);
INSERT INTO variation_size (product_variation_id, size)
VALUES (121, '31');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (121, 3, 3, True);


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (94, '35462266', 1, 19, 'Laos Beaded iPhone 5 Case', 'Colorfully designed beaded iPhone case in an eclectic pattern.</br>*By Free People<br/>*Plastic</br>*Import<br/>', 'http://www.freepeople.com/sale-sale-accessories/laos-beaded-iphone-case/', 34.02, 24.24, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (122, 94, '', 'Sea', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (583, 122, 'http://img5.fpassets.com/is/image/FreePeople/35462266_030_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (584, 122, 'http://img2.fpassets.com/is/image/FreePeople/35462266_030_b?$detail-item$');


INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (123, 94, '', 'Fuschia', '', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (585, 123, 'http://img1.fpassets.com/is/image/FreePeople/35462266_062_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (586, 123, 'http://img4.fpassets.com/is/image/FreePeople/35462266_062_b?$detail-item$');


INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)
VALUES (95, '34708487', 1, 19, 'Cumberland Weather Boot', 'Insulated weather boots with cozy Sherpa trim. Water and wind resistant, with coated synthetic leather uppers and waterproof thermal rubber shells, ideal for protecting your feet from the elements.</br>*By Sorel<br/>*Synthetic Leather Uppers</br>*Thinsulate™ Insulation</br>*Removable EVA Comfort Footbed</br>*Rubber Shell</br>*Import<br/>Measurements:</br>Heel: 1 1/2 in = 3 3/4 cm</br>Shaft: 9 in = 22 3/4 cm', 'http://www.freepeople.com/sale-sale-shoes/cumberland-weather-boot/', 127.57, 84.99, 3, True, 0);

INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)
VALUES (124, 95, '', 'Winter White', 'http://img5.fpassets.com/is/image/FreePeople/34708487_010_swatch?$swatch$', NOW(), NOW());
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (587, 124, 'http://img2.fpassets.com/is/image/FreePeople/34708487_010_0?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (588, 124, 'http://img3.fpassets.com/is/image/FreePeople/34708487_010_a?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (589, 124, 'http://img3.fpassets.com/is/image/FreePeople/34708487_010_b?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (590, 124, 'http://img4.fpassets.com/is/image/FreePeople/34708487_010_c?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (591, 124, 'http://img1.fpassets.com/is/image/FreePeople/34708487_010_d?$detail-item$');
INSERT INTO product_image (id, product_variation_id, filepath)
VALUES (592, 124, 'http://img3.fpassets.com/is/image/FreePeople/34708487_010_e?$detail-item$');
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '5.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '6.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '7.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '8');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '8.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '9.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '10');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 1, 1, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '10.5');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);
INSERT INTO variation_size (product_variation_id, size)
VALUES (124, '11');
INSERT INTO variation_stock (product_variation_id, min, max, has_more)
VALUES (124, 0, 0, False);


