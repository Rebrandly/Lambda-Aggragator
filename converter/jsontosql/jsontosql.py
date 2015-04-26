import json

# ignore these categories
IGNORE_CATEGORY_LIST = ["View All", "Stock", "Clothes", "clothes"]

# incrementing id values
PRODUCT_ID = 1
PRODUCT_VARIATION_ID = 1
PRODUCT_IMAGE_ID = 1

# record unique names 
HUMAN_DEMO = []
CATEGORY = []
SITE_NAME = []
CITY = []
COUNTRY = []
HD_CAT = []


'''
Reads property value from the object. Escapes strings to work in postgreSQL.
Returns empty string if key not found.
'''
def getProperty(obj, key):
    if key in obj:
        val = obj[key]
        if isinstance(val, unicode):
            return val.replace("'", "''")
        if isinstance(val, list) and len(val)>0 and isinstance(val[0], unicode):
            return [x.replace("'", "''") for x in val]
        return val
    return ""

'''
Adds a unique value to the list if it's not there.
Returns the id representing it and a boolean indicating if it was added.
'''
def addToList(val, lst):
    if val in lst:
        val_id = lst.index(val) + 1
        return val_id, False
    lst.append(val)
    val_id = len(lst)
    return val_id, True

'''
Traverses the site tree storing the category names.
'''
def processCategory(sitename, lst, siteinfo, names=[]):
    global IGNORE_CATEGORY_LIST
    
    for category in lst:
        
        # if this node is a product that did finished successfuly
        if "metadata" in category and category["finished"]:
            processProduct(sitename, category, names, siteinfo)

        else:
            # category tag name
            name = getProperty(category, "name")
        
            # create a new list and add the tag if its not in exception list
            new_names_list = list(names)
            if not name in IGNORE_CATEGORY_LIST:
                new_names_list.append(cleanCategory(name))
            
            processCategory(sitename, category["children"], siteinfo, new_names_list)
             
             
def cleanCategory(cat):
    if cat.count("&") > 0:
        l = [c.strip() for c in cat.split("&")]
        l.sort()
        cat = " & ".join(l)
    elif cat.count("+") > 0:
        l = [c.strip() for c in cat.split("+")]
        l.sort()
        cat = " & ".join(l)
    cat = cat.title()
    return cat
             
             
             
             
HUMAN_VALUES = []             
def addTohuman_demographics(val):
    global HUMAN_VALUES
    HUMAN_VALUES.append(val)
def gethuman_demographics():
    global HUMAN_VALUES
    if len(HUMAN_VALUES) > 0:
        return "INSERT INTO human_demographics (id, name) VALUES " + (",".join(HUMAN_VALUES)) + ";\n"
    
CAT_VALUES = []
def addTocategories(val):  
    global CAT_VALUES
    CAT_VALUES.append(val)
def getcategories():
    global CAT_VALUES
    if len(CAT_VALUES) > 0:
        return "INSERT INTO categories (id, name) VALUES " + (",".join(CAT_VALUES)) + ";\n"

HUMAN_CAT_VALUES = []    
def addTohuman_demographics_categories(val):
    global HUMAN_CAT_VALUES
    HUMAN_CAT_VALUES.append(val)
def gethuman_demographics_categories():
    global HUMAN_CAT_VALUES
    if len(HUMAN_CAT_VALUES) > 0:
        return "INSERT INTO human_demographics_categories (human_demographic_id, category_id) VALUES " + (",".join(HUMAN_CAT_VALUES)) + ";\n"

COUNTRY_VALUES = []
def addTocountries(val):   
    global COUNTRY_VALUES
    COUNTRY_VALUES.append(val)
def getcountries():  
    global COUNTRY_VALUES
    if len(COUNTRY_VALUES) > 0:
        return "INSERT INTO countries (id, country) VALUES " + (",".join(COUNTRY_VALUES)) + ";\n"
    
CITY_VALUES = []
def addTocities(val):    
    global CITY_VALUES
    CITY_VALUES.append(val)
def getcities():
    global CITY_VALUES
    if len(CITY_VALUES) > 0:
        return "INSERT INTO cities (id, city, country_id) VALUES " + (",".join(CITY_VALUES)) + ";\n"
    
RETAILER_VALUES = []
def addToretailers(val):
    global RETAILER_VALUES
    RETAILER_VALUES.append(val)
def getretailers():
    global RETAILER_VALUES
    if len(RETAILER_VALUES) > 0:
        return "INSERT INTO retailers (id, name, homepage_link, city_id) VALUES " + (",".join(RETAILER_VALUES)) + ";\n"
    
PRODUCT_VALUES = []
def addToproducts(val):  
    global PRODUCT_VALUES
    PRODUCT_VALUES.append(val)
def getproducts():
    global PRODUCT_VALUES
    if len(PRODUCT_VALUES) > 0:
        return "INSERT INTO products (id, origin_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes) VALUES " + (",".join(PRODUCT_VALUES)) + ";\n"
    
PRODUCT_VAR_VALUES = []
def addToproduct_variations(val):
    global PRODUCT_VAR_VALUES
    PRODUCT_VAR_VALUES.append(val)
def getproduct_variations():
    global PRODUCT_VAR_VALUES
    if len(PRODUCT_VAR_VALUES) > 0:
        return "INSERT INTO product_variations (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at) VALUES " + (",".join(PRODUCT_VAR_VALUES)) + ";\n"
    
PRODUCT_IMG_VALUES = []
def addToproduct_images(val):
    global PRODUCT_IMG_VALUES
    PRODUCT_IMG_VALUES.append(val)
def getproduct_images():
    global PRODUCT_IMG_VALUES
    if len(PRODUCT_IMG_VALUES) > 0:
        return "INSERT INTO product_images (id, product_variation_id, filepath) VALUES " + (",".join(PRODUCT_IMG_VALUES)) + ";\n"
    
PRODUCT_VAR_SIZE = []
def addTovariation_sizes(val):  
    global PRODUCT_VAR_SIZE
    PRODUCT_VAR_SIZE.append(val)
def getvariation_sizes():
    global PRODUCT_VAR_SIZE
    if len(PRODUCT_VAR_SIZE) > 0:
        return "INSERT INTO variation_sizes (product_variation_id, size) VALUES " + (",".join(PRODUCT_VAR_SIZE)) + ";\n"
    
PRODUCT_VAR_STOCK = []
def addTovariation_stocks(val):  
    global PRODUCT_VAR_STOCK
    PRODUCT_VAR_STOCK.append(val)
def getvariation_stocks():
    global PRODUCT_VAR_STOCK
    if len(PRODUCT_VAR_STOCK) > 0:
        return "INSERT INTO variation_stocks (product_variation_id, min, max, has_more) VALUES " + (",".join(PRODUCT_VAR_STOCK)) + ";\n"








'''
Produces the sql code by processing the product.
'''
def processProduct(sitename, product, category_list, siteinfo):
    global PRODUCT_ID, PRODUCT_VARIATION_ID, PRODUCT_IMAGE_ID, HUMAN_DEMO, CATEGORY, SITE_NAME, HD_CAT, CITY, COUNTRY
    
    data = product["metadata"]    
    
    # other properties
    site_url = getProperty(siteinfo, "url")
    site_city = getProperty(siteinfo, "city")
    site_country = getProperty(siteinfo, "country")
    name = getProperty(product, "name")
    url = getProperty(data, "url")
    id = getProperty(data, "id")
    cur_price = getProperty(data, "current_price")
    orig_price = getProperty(data, "original_price")
    desc = getProperty(data, "long_desc")
    variations = getProperty(data, "variations")
    
    
    # add and generate the human_demographic record
    hdemo = category_list[0]
    hdemo_id, added = addToList(hdemo, HUMAN_DEMO)
    if added:
        addTohuman_demographics("(%d, '%s')" % (hdemo_id, hdemo))    
        
    # add and generate the category record    
    cat = category_list[1]
    cat_id, added = addToList(cat, CATEGORY)
    if added:
        addTocategories("(%d, '%s')" % (cat_id, cat))       
        
    # add and generate the human_demographic-category record
    pair = (hdemo_id, cat_id)
    if not pair in HD_CAT:    
        HD_CAT.append(pair)
        addTohuman_demographics_categories("(%d, %d)" % (hdemo_id, cat_id))     
        
    # add and generate the country record     
    country_id, added = addToList(site_country, COUNTRY)    
    if added:
        addTocountries("(%d, '%s')" % (country_id, site_country))    
        
    # add and generate the city record 
    city_id, added = addToList(site_city, CITY)  
    if added:
        addTocities("(%d, '%s', %d)" % (city_id, site_city, country_id))   
        
    # add and generate the retailer record     
    retailer_id, added = addToList(sitename, SITE_NAME)
    if added:
        addToretailers("(%d, '%s', '%s', %d)" % (retailer_id, sitename, site_url, city_id))    


    # add the products record
    addToproducts("(%d, '%s', %d, '%s', '%s', '%s', %.2f, %.2f, %d, %s, %d)" % (PRODUCT_ID, id, cat_id, name, desc, url, orig_price, cur_price, retailer_id, "True", 0))    
    
    for variation in variations:   
        
        aliasName = getProperty(variation, "aliasName")
        swatch_link = getProperty(variation, "swatch_link")
        image_links = getProperty(variation, "image_links") 
        size_list = getProperty(variation, "sizes")

        # add to product variations
        addToproduct_variations("(%d, %d, '%s', '%s', '%s', %s, %s)" % (PRODUCT_VARIATION_ID, PRODUCT_ID, "", aliasName, swatch_link, "NOW()", "NOW()"))      
       
        # add image links
        for image_link in image_links:
            addToproduct_images("(%d, %d, '%s')" % (PRODUCT_IMAGE_ID, PRODUCT_VARIATION_ID, image_link))
            PRODUCT_IMAGE_ID += 1 
            
        # add the size and stock info
        if size_list:
            for sizeobj in size_list:    
                
                # other properties
                size = getProperty(sizeobj, "size")
                stock_min = getProperty(sizeobj, "stock_min")
                stock_max = getProperty(sizeobj, "stock_max")
                hasMore = getProperty(sizeobj, "hasMore")
      
                # add to product size
                addTovariation_sizes("(%d, '%s')" % (PRODUCT_VARIATION_ID, size))
                # add to product stock
                addTovariation_stocks("(%d, %s, %s, %s)" % (PRODUCT_VARIATION_ID, stock_min if stock_min!="" else "null", stock_max if stock_max!="" else "null", hasMore if hasMore!="" else "null"))

        PRODUCT_VARIATION_ID += 1
    PRODUCT_ID += 1
            
        

with open('json.txt') as data_file:    
    data = json.load(data_file)
    
    for site in data["response"]:
    
        root = site["root"]
        
        name = root["name"]
        obj = root["children"] 
        siteinfo = root["metadata"]["site_info"]
        
        processCategory(name, obj, siteinfo)





result = open("result.sql", "w")
result.write(getcategories().encode('utf8'))
result.write(gethuman_demographics().encode('utf8'))
result.write(getcountries().encode('utf8'))
result.write(getcities().encode('utf8'))
result.write(getretailers().encode('utf8'))
result.write(getproducts().encode('utf8'))
result.write(getproduct_variations().encode('utf8'))
result.write(gethuman_demographics_categories().encode('utf8'))
result.write(getproduct_images().encode('utf8'))
result.write(getvariation_sizes().encode('utf8'))
result.write(getvariation_stocks().encode('utf8'))
result.close()