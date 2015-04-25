import json
from pprint import pprint

def getProperty(obj, key):
    val = None
    if key in obj:
        val = obj[key]
    return val

def digger(lst, names=[]):
    for category in lst:
        if "metadata" in category and category["finished"]:
            processProduct(category, names)
        else:
            name = category["name"]
        
            new_names_list = names[:]
            if name!="View All" and name!="Stock" and name!="Clothes" and name!="clothes":
                new_names_list.append(name)
            
            digger(category["children"], new_names_list)
        
def processProduct(product, category_list):
    name = product["name"]
    data = product["metadata"]    
    
    print category_list[1]
    
    url = data["url"]
    id = data["id"]
    price = data["price"]
    desc = data["long_desc"]
    variations = data["variations"]
    
    for variation in variations:    
        aliasName = getProperty(variation, "aliasName")
        optionName = getProperty(variation, "optionName")
        swatch_link = getProperty(variation, "swatch_link")
        image_links = getProperty(variation, "image_links")
        size_list = getProperty(variation, "sizes")
        
        if size_list:
            for sizeobj in size_list:
                size = sizeobj["size"]
                
                stock_min = getProperty(sizeobj, "stock_min")
                stock_max = getProperty(sizeobj, "stock_max")
                hasMore = getProperty(sizeobj, "hasMore")
                #print hasMore
        
        

with open('json.txt') as data_file:    
    data = json.load(data_file)
    sites = data["response"]
    
    for site in sites:
        root = site["root"]
        
        name = root["name"]
        genders = root["children"]   
        
        digger(genders)
