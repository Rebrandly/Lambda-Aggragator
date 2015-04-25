import json
from pprint import pprint

IGNORE_CATEGORY_LIST = ["View All", "Stock", "Clothes", "clothes"]
PRODUCT_ID = 1
PRODUCT_VARIATION_ID = 1
RESULT = open("result.sql", "w")


def getProperty(obj, key):
    val = ""
    if key in obj:
        val = obj[key]
        
        if isinstance(val, unicode):
            val = val.replace("'", "\\'")
            
        if isinstance(val, list):
            for i in range(len(val)):
                if isinstance(val, unicode):
                    val[i] = val[i].replace("'", "\\'")
    return val

def digger(lst, names=[]):
    global IGNORE_CATEGORY_LIST
    
    for category in lst:
        if "metadata" in category and category["finished"]:
            processProduct(category, names)
        else:
            # category tag name
            name = getProperty(category, "name")
        
            new_names_list = names[:]
            if not name in IGNORE_CATEGORY_LIST:
                new_names_list.append(name.title())
            
            digger(category["children"], new_names_list)
        
        
        
        
        
def processProduct(product, category_list):
    global PRODUCT_ID, PRODUCT_VARIATION_ID, RESULT
    
    data = product["metadata"]    
    
    # other properties
    name = getProperty(product, "name")
    url = getProperty(data, "url")
    id = getProperty(data, "id")
    cur_price = getProperty(data, "current_price")
    orig_price = getProperty(data, "original_price")
    desc = getProperty(data, "long_desc")
    variations = getProperty(data, "variations")
    
    string =  "INSERT INTO product (id, origin_id, human_demographic_id, category_id, title, description, homepage_product_link, original_price, sale_price, retailer_id, active, upvotes)\n"
    string += "VALUES (%d, '%s', %d, %d, '%s', '%s', '%s', %.2f, %.2f, %d, %d, %d);\n\n" % (PRODUCT_ID, id, 0, 0, name, desc, url, orig_price, cur_price, 0, 1, 0)    
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
            string =  "INSERT INTO product_image (product_variation_id, filepath)\n"
            string += "VALUES (%d, '%s');\n" % (PRODUCT_VARIATION_ID, image_link)    
            RESULT.write(string.encode('utf8'))               

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
                    string += "VALUES (%d, %d, %d, %d);\n" % (PRODUCT_VARIATION_ID, stock_min, stock_max, hasMore)
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
        
        digger(obj)


RESULT.close()