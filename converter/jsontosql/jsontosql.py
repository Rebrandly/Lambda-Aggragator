import json
from pprint import pprint

IGNORE_CATEGORY_LIST = ["View All", "Stock", "Clothes", "clothes"]
PRODUCT_ID = 1
PRODUCT_VARIATION_ID = 1
PRODUCT_IMAGE_ID = 1
HUMAN_DEMO = []
CATEGORY = []
SITE_NAME = []
CITY = []
COUNTRY = []
HD_CAT = []
RESULT = open("result.sql", "w")


def getProperty(obj, key):
    val = ""
    if key in obj:
        val = obj[key]
        
        if isinstance(val, unicode):
            val = val.replace("'", "''")
        elif isinstance(val, list):
            for i in range(len(val)):
                if isinstance(val, unicode):
                    val[i] = val[i].replace("'", "''")
    return val

def digger(sitename, lst, siteinfo, names=[]):
    global IGNORE_CATEGORY_LIST
    
    for category in lst:
        if "metadata" in category and category["finished"]:
            processProduct(sitename, category, names, siteinfo)
        else:
            # category tag name
            name = getProperty(category, "name")
        
            new_names_list = names[:]
            if not name in IGNORE_CATEGORY_LIST:
                new_names_list.append(name.title())
            
            digger(sitename, category["children"], siteinfo, new_names_list)
        
        
def addToList(val, lst):
    if val in lst:
        val_id = lst.index(val) + 1
        return val_id, False
    else:
        lst.append(val)
        val_id = len(lst)
        return val_id, True
        
        
def processProduct(sitename, product, category_list, siteinfo):
    global PRODUCT_ID, PRODUCT_VARIATION_ID, PRODUCT_IMAGE_ID, HUMAN_DEMO, CATEGORY, SITE_NAME, HD_CAT, CITY, COUNTRY, RESULT
    
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
    
    
    
    hdemo = category_list[0]
    hdemo_id, added = addToList(hdemo, HUMAN_DEMO)
    if added:
        string =  "INSERT INTO human_demographics (id, name) VALUES (%d, '%s');\n\n\n" % (hdemo_id, hdemo)    
        RESULT.write(string.encode('utf8'))  
        
    cat = category_list[1]
    cat_id, added = addToList(cat, CATEGORY)
    if added:
        string =  "INSERT INTO categories (id, name) VALUES (%d, '%s');\n\n\n" % (cat_id, cat)    
        RESULT.write(string.encode('utf8'))    
        
    pair = (hdemo_id, cat_id)
    if not pair in HD_CAT:    
        HD_CAT.append(pair)
        string =  "INSERT INTO human_demographics_categories (human_demographic_id, category_id) VALUES (%d, %d);\n\n\n" % (hdemo_id, cat_id)    
        RESULT.write(string.encode('utf8'))    
        
    country_id, added = addToList(site_country, COUNTRY)    
    if added:
        string =  "INSERT INTO countries (id, country) VALUES (%d, '%s');\n\n\n" % (country_id, site_country)    
        RESULT.write(string.encode('utf8')) 
        
    city_id, added = addToList(site_city, CITY)  
    if added:
        string =  "INSERT INTO cities (id, city, country_id) VALUES (%d, '%s', %d);\n\n\n" % (city_id, site_city, country_id)    
        RESULT.write(string.encode('utf8')) 
        
    sname_id, added = addToList(sitename, SITE_NAME)
    if added:
        string =  "INSERT INTO retailers (id, name, homepage_link, city_id) VALUES (%d, '%s', '%s', %d);\n\n\n" % (sname_id, sitename, site_url, city_id)    
        RESULT.write(string.encode('utf8')) 


    
    string =  "INSERT INTO products (id, origin_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes) VALUES (%d, '%s', %d, '%s', '%s', '%s', %.2f, %.2f, %d, %s, %d);\n\n" % (PRODUCT_ID, id, cat_id, name, desc, url, orig_price, cur_price, sname_id, "True", 0)    
    RESULT.write(string.encode('utf8'))
    
    
    
    for variation in variations:   
        
        
        aliasName = getProperty(variation, "aliasName")
        swatch_link = getProperty(variation, "swatch_link")
        image_links = getProperty(variation, "image_links") 
        size_list = getProperty(variation, "sizes")




        string =  "INSERT INTO product_variations (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at) VALUES (%d, %d, '%s', '%s', '%s', %s, %s);\n" % (PRODUCT_VARIATION_ID, PRODUCT_ID, "", aliasName, swatch_link, "NOW()", "NOW()")    
        RESULT.write(string.encode('utf8'))        
       

        if len(image_links) > 0:
            Img_Array = []
            for image_link in image_links:
                Img_Array.append("(%d, %d, '%s')" % (PRODUCT_IMAGE_ID, PRODUCT_VARIATION_ID, image_link))
                PRODUCT_IMAGE_ID += 1
            string = "INSERT INTO product_images (id, product_variation_id, filepath) VALUES " + (",".join(Img_Array)) + ";\n"
            RESULT.write(string.encode('utf8'))  
            
            

        if size_list:
            
            Size_Array = []
            Stock_Array = []
            
            for sizeobj in size_list:    
                # other properties
                size = getProperty(sizeobj, "size")
                stock_min = getProperty(sizeobj, "stock_min")
                stock_max = getProperty(sizeobj, "stock_max")
                hasMore = getProperty(sizeobj, "hasMore")
      
                Size_Array.append("(%d, '%s')" % (PRODUCT_VARIATION_ID, size))
                
                if stock_min!="" and stock_max!="" and hasMore!="":
                    Stock_Array.append("(%d, %d, %d, %s)" % (PRODUCT_VARIATION_ID, stock_min, stock_max, hasMore))
                else:
                    Stock_Array.append("(%d)" % (PRODUCT_VARIATION_ID))
                
                
                
            if len(Size_Array) > 0:
                string = "INSERT INTO variation_sizes (product_variation_id, size) VALUES " + (",".join(Size_Array)) + ";\n"
                RESULT.write(string.encode('utf8')) 


                
            if len(Stock_Array) > 0:
                if stock_min!="" and stock_max!="" and hasMore!="":
                    string = "INSERT INTO variation_stocks (product_variation_id, min, max, has_more) VALUES " + (",".join(Stock_Array)) + ";\n"
                else:
                    string = "INSERT INTO variation_stocks (product_variation_id) VALUES " + (",".join(Stock_Array)) + ";\n"
                RESULT.write(string.encode('utf8')) 
        
        
        RESULT.write("\n")
        
        
        
        PRODUCT_VARIATION_ID += 1
    PRODUCT_ID += 1
            
        

with open('json.txt') as data_file:    
    data = json.load(data_file)
    sites = data["response"]
    
    for site in sites:
        root = site["root"]
        
        name = root["name"]
        obj = root["children"] 
        siteinfo = root["metadata"]["site_info"]
        
        digger(name, obj, siteinfo)


RESULT.close()