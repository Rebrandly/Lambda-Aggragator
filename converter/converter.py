import glob
import time
import os

def processSiteModule(fd, filename):
    
    lines = [line for line in fd]
    
    name = lines[0].strip()
    url = lines[1].strip()
    city = lines[2].strip()
    country = lines[3].strip()
    maxrequests = lines[4].strip()
    concurrentrequests = lines[5].strip()
    active = lines[6].strip() == "1"
    codelist = lines[7:]
    
    nodes = []
    start = 0
    for i in range(len(codelist)):
        dashescount = codelist[i].count("-")
        if codelist[i].startswith("});"):
            nodes.append(codelist[start:i+1])
            start = i+1
                
    string =  "/*\n"
    string += " * " + name + " Site Module\n" 
    string += " *\n"
    string += " * Developer: Ryan Steve D'Souza\n"
    string += " * http://www.linkedin.com/profile/view?id=282676120\n"
    string += " *\n"
    string += " * Copyright " + time.strftime("%Y") + "\n"
    string += " *\n"
    string += " * Last Modified Date: " + time.strftime("%H:%M:%S") + " " + time.strftime("%d/%m/%Y") + "\n"
    string += " */\n"
    string += "\n\n"
    
    if not active:
        string += "/*\n\n"
	
    string += "var name = \"" + name + "\";\n"
    string += "var city = \"" + city + "\";\n"
    string += "var country = \"" + country + "\";\n"
    string += "var url = \"" + url + "\";\n"
    string += "\n\n"
    
    string += "var nodes = [\n"        
    for i in range(len(nodes)):
        string += "\tfunction(input) {\n"
        string += "\t\treturn new LambdaNode(input.name, input, function(input, scanEvents, node) {\n"
        node = nodes[i]
        for line in node:
            string += "\t\t\t" + line
        string += "\n\t\t});\n"
        string += "\t}"
        if i < len(nodes)-1:
            string += ","
        string += "\n"
    string += "];\n"
    string += "\n\n"
    
    string += "crawlLooper.push(new LambdaCrawl(new LambdaSite(name, url, " + maxrequests + ", " + concurrentrequests + ", nodes)));"  
    
    if not active:
        string += "\n\n*/"
	
    return string, filename
        

input_files = "./site_modules/*.js"
output_folder = "./../js/sites"

# clear the folder    
files = glob.glob(output_folder + "/*")
for f in files:
    os.remove(f)    

# read site modules and write the files
for filepath in glob.glob(input_files):
    fd = open(filepath)
    filename = filepath.split("\\")[-1]
    string, filename = processSiteModule(fd, filename)
    fd.close()
    
    target = open(output_folder + "/" + filename, 'w')   
    target.write(string)
    target.close()    