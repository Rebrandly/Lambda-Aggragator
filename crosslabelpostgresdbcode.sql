drop schema public cascade;
create schema public;
	
CREATE TABLE "categories" (
	"id" integer,
	"name" VARCHAR(255),
	CONSTRAINT Categories_pk PRIMARY KEY (id)
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

CREATE TABLE "human_demographics" (
	"id" integer,
	"name" VARCHAR(255),
	CONSTRAINT Human_Demographics_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "countries" (
	"id" integer,
	"country" VARCHAR(255),
	CONSTRAINT Countries_pk PRIMARY KEY (id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "cities" (
	"id" integer,
	"city" VARCHAR(255),
	"country_id" integer,
	CONSTRAINT Cities_pk PRIMARY KEY (id),
	CONSTRAINT Cities_fk0 FOREIGN KEY (country_id) REFERENCES countries(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "retailers" (
	"id" integer,
	"name" VARCHAR(255),
	"homepage_link" TEXT,
	"city_id" integer,
	CONSTRAINT Retailers_pk PRIMARY KEY (id),
	CONSTRAINT Retailers_fk0 FOREIGN KEY (city_id) REFERENCES cities(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "products" (
	"id" integer,
	"origin_id" VARCHAR(255),
	"category_id" integer,
	"title" VARCHAR(255),
	"description" TEXT,
	"homepage_product_link" TEXT,
	"original_price" FLOAT,
	"sale_price" FLOAT,
	"retailer_id" integer,
	"active" BOOLEAN,
	"upvotes" integer,
	CONSTRAINT Products_pk PRIMARY KEY (id),
	CONSTRAINT Products_fk0 FOREIGN KEY (category_id) REFERENCES categories(id),
	CONSTRAINT Products_fk1 FOREIGN KEY (retailer_id) REFERENCES retailers(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "product_variations" (
	"id" integer,
	"product_id" integer,
	"origin_id" VARCHAR(255),
	"name" VARCHAR(255),
	"swatch_filepath" TEXT,
	"created_at" timestamp,
	"updated_at" timestamp,
	CONSTRAINT Product_Variations_pk PRIMARY KEY (id),
	CONSTRAINT Product_Variations_fk0 FOREIGN KEY (product_id) REFERENCES products(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "human_demographics_categories" (
	"human_demographic_id" integer,
	"category_id" integer,
	CONSTRAINT Human_Demographic_Categories_pk PRIMARY KEY(human_demographic_id, category_id),
	CONSTRAINT Human_Demographic_Categories_fk0 FOREIGN KEY (human_demographic_id) REFERENCES human_demographics(id),
	CONSTRAINT Human_Demographic_Categories_fk1 FOREIGN KEY (category_id) REFERENCES categories(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "product_images" (
	"id" integer,
	"product_variation_id" integer,
	"filepath" TEXT,
	CONSTRAINT Product_Images_pk PRIMARY KEY (id),
	CONSTRAINT Product_Images_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variations(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "retailers_social_media" (
	"social_media_id" integer,
	"retailer_id" integer,
	"social_media_link" TEXT,
	CONSTRAINT Retailers_Social_Media_pk PRIMARY KEY (social_media_id,retailer_id),
	CONSTRAINT Retailers_Social_Media_fk0 FOREIGN KEY (social_media_id) REFERENCES social_media(id),
	CONSTRAINT Retailers_Social_Media_fk1 FOREIGN KEY (retailer_id) REFERENCES retailers(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "variation_sizes" (
	"product_variation_id" integer,
	"size" VARCHAR(255),
	CONSTRAINT Variation_Sizes_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variations(id)
) WITH (
  OIDS=FALSE
);

CREATE TABLE "variation_stocks" (
	"product_variation_id" integer,
	"min" integer,
	"max" integer,
	"has_more" BOOLEAN,
	CONSTRAINT Variation_Stocks_fk0 FOREIGN KEY (product_variation_id) REFERENCES product_variations(id)
) WITH (
  OIDS=FALSE
);