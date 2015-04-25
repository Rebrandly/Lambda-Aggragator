DROP TABLE IF EXISTS product, human_demographic, product_image, retailer, variation_size, category, social_media, retailer_social_media, product_variation, variation_stock, city, country;

CREATE TABLE "product" (
	"id" integer,
	"origin_id" VARCHAR(255),
	"human_demographic_id" integer,
	"category_id" integer,
	"title" VARCHAR(255),
	"description" TEXT,
	"homepage_product_link" TEXT,
	"original_price" FLOAT,
	"sale_price" integer,
	"retailer_id" integer,
	"active" BOOLEAN,
	"upvotes" integer,
	CONSTRAINT Product_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "human_demographic" (
	"id" integer,
	"name" VARCHAR(255),
	CONSTRAINT Human_Demographic_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "product_image" (
	"product_variation_id" integer,
	"filepath" TEXT,
	CONSTRAINT Product_Image_pk PRIMARY KEY (product_variation_id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "category" (
	"id" integer,
	"name" VARCHAR(255),
	CONSTRAINT Category_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "retailer" (
	"id" integer,
	"name" VARCHAR(255),
	"homepage_link" TEXT,
	"city_id" integer,
	CONSTRAINT Retailer_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);


CREATE TABLE "social_media" (
	"id" integer,
	"name" VARCHAR(255),
	CONSTRAINT Social_Media_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "retailer_social_media" (
	"social_media_id" integer,
	"retailer_id" integer,
	"social_media_link" TEXT,
	CONSTRAINT Retailer_Social_Media_pk PRIMARY KEY (social_media_id,retailer_id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "product_variation" (
	"id" integer,
	"product_id" integer,
	"origin_id" VARCHAR(255),
	"name" VARCHAR(255),
	"swatch_filepath" TEXT,
	"created_at" timestamp,
	"updated_at" timestamp,
	CONSTRAINT Product_Variation_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "variation_size" (
	"product_variation_id" integer,
	"size" VARCHAR(255)
) WITH (
  OIDS=FALSE
);


CREATE TABLE "variation_stock" (
	"product_variation_id" integer,
	"min" integer,
	"max" integer,
	"has_more" BOOLEAN
) WITH (
  OIDS=FALSE
);

CREATE TABLE "city" (
	"id" integer,
	"city" VARCHAR(255),
	"country_id" integer,
	CONSTRAINT City_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "country" (
	"id" integer,
	"country" VARCHAR(255),
	CONSTRAINT Country_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);


ALTER TABLE "product" ADD CONSTRAINT Product_fk0 FOREIGN KEY (human_demographic_id) REFERENCES human_demographic(id);
ALTER TABLE "product" ADD CONSTRAINT Product_fk1 FOREIGN KEY (category_id) REFERENCES category(id);
ALTER TABLE "product" ADD CONSTRAINT Product_fk2 FOREIGN KEY (retailer_id) REFERENCES retailer(id);
ALTER TABLE "product_image" ADD CONSTRAINT Product_Image_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variation(id);
ALTER TABLE "retailer" ADD CONSTRAINT Retailer_fk0 FOREIGN KEY (city_id) REFERENCES city(id);
ALTER TABLE "variation_size" ADD CONSTRAINT Variation_Size_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variation(id);
ALTER TABLE "retailer_social_media" ADD CONSTRAINT Retailer_Social_Media_fk0 FOREIGN KEY (social_media_id) REFERENCES social_Media(id);
ALTER TABLE "retailer_social_media" ADD CONSTRAINT Retailer_Social_Media_fk1 FOREIGN KEY (retailer_id) REFERENCES retailer(id);
ALTER TABLE "product_variation" ADD CONSTRAINT Product_Variation_fk0 FOREIGN KEY (product_id) REFERENCES product(id);
ALTER TABLE "variation_stock" ADD CONSTRAINT Variation_Stock_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variation(id);
ALTER TABLE "city" ADD CONSTRAINT City_fk0 FOREIGN KEY (country_id) REFERENCES country(id);