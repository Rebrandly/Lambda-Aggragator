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
    global PRODUCT_ID, PRODUCT_VARIATION_ID, PRODUCT_IMAGE_ID, HUMAN_DEMO, CATEGORY, SITE_NAME, CITY, COUNTRY, RESULT
    
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
        string =  "INSERT INTO human_demographic (id, name)\n"
        string += "VALUES (%d, '%s');\n\n\n" % (hdemo_id, hdemo)    
        RESULT.write(string.encode('utf8'))  
        
    cat = category_list[1]
    cat_id, added = addToList(cat, CATEGORY)
    if added:
        string =  "INSERT INTO category (id, name)\n"
        string += "VALUES (%d, '%s');\n\n\n" % (cat_id, cat)    
        RESULT.write(string.encode('utf8'))    
        
    country_id, added = addToList(site_country, COUNTRY)    
    if added:
        string =  "INSERT INTO country (id, country)\n"
        string += "VALUES (%d, '%s');\n\n\n" % (country_id, site_country)    
        RESULT.write(string.encode('utf8')) 
        
    city_id, added = addToList(site_city, CITY)  
    if added:
        string =  "INSERT INTO city (id, city, country_id)\n"
        string += "VALUES (%d, '%s', %d);\n\n\n" % (city_id, site_city, country_id)    
        RESULT.write(string.encode('utf8')) 
        
    sname_id, added = addToList(sitename, SITE_NAME)
    if added:
        string =  "INSERT INTO retailer (id, name, homepage_link, city_id)\n"
        string += "VALUES (%d, '%s', '%s', %d);\n\n\n" % (sname_id, sitename, site_url, city_id)    
        RESULT.write(string.encode('utf8')) 
    
    string =  "INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)\n"
    string += "VALUES (%d, '%s', %d, %d, '%s', '%s', '%s', %.2f, %.2f, %d, %s, %d);\n\n" % (PRODUCT_ID, id, hdemo_id, cat_id, name, desc, url, orig_price, cur_price, sname_id, "True", 0)    
    RESULT.write(string.encode('utf8'))
    
    for variation in variations:    
        aliasName = getProperty(variation, "aliasName")
        swatch_link = getProperty(variation, "swatch_link")
        image_links = getProperty(variation, "image_links") 
        size_list = getProperty(variation, "sizes")

        string =  "INSERT INTO product_variation (id, product_id, origin_id, name, swatch_filepath, created_at, updated_at)\n"
        string += "VALUES (%d, %d, '%s', '%s', '%s', %s, %s);\n" % (PRODUCT_VARIATION_ID, PRODUCT_ID, "", aliasName, swatch_link, "NOW()", "NOW()")    
        RESULT.write(string.encode('utf8'))        

        for image_link in image_links:
            string =  "INSERT INTO product_image (id, product_variation_id, filepath)\n"
            string += "VALUES (%d, %d, '%s');\n" % (PRODUCT_IMAGE_ID, PRODUCT_VARIATION_ID, image_link)    
            RESULT.write(string.encode('utf8'))      
            
            PRODUCT_IMAGE_ID += 1

        if size_list:
            for sizeobj in size_list:
                
                # other properties
                size = getProperty(sizeobj, "size")
                stock_min = getProperty(sizeobj, "stock_min")
                stock_max = getProperty(sizeobj, "stock_max")
                hasMore = getProperty(sizeobj, "hasMore")

                string =  "INSERT INTO variation_size (product_variation_id, size)\n"
                string += "VALUES (%d, '%s');\n" % (PRODUCT_VARIATION_ID, size)    
                RESULT.write(string.encode('utf8'))         
                
                if stock_min!="" and stock_max!="" and hasMore!="":
                    string =  "INSERT INTO variation_stock (product_variation_id, min, max, has_more)\n"
                    string += "VALUES (%d, %d, %d, %s);\n" % (PRODUCT_VARIATION_ID, stock_min, stock_max, hasMore)
                else:
                    string =  "INSERT INTO variation_stock (product_variation_id)\n"
                    string += "VALUES (%d);\n" % (PRODUCT_VARIATION_ID)                        
                RESULT.write(string.encode('utf8'))    
        
        RESULT.write("\n\n")
        
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