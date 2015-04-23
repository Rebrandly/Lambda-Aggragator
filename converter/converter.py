import glob
import time
import os

def processSiteModule(fd, filename):
    
    lines = [line for line in fd]
    
    name = lines[0].strip()
    url = lines[1].strip()
    maxrequests = lines[2].strip()
    concurrentrequests = lines[3].strip()
    active = lines[4].strip() == "1"
    codelist = lines[5:]
    
    if not active:
        filename = "_" + filename
    
    nodes = []
    start = 0
    for i in range(len(codelist)):
        dashescount = codelist[i].count("-")
        if dashescount > 0 and dashescount == len(codelist[i].strip()):
            nodes.append(codelist[start:i])
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

    string += "// Load the cheerio module to parse html responses.\n"
    string += "var $ = require('cheerio');\n"
    string += "// Load my custom node object\n"
    string += "var LambdaNode = require('../module/LambdaNode.js');\n"
    string += "// Load my custom site object\n"
    string += "var LambdaSite = require('../module/LambdaSite.js');\n"
    string += "// Load my custom node object\n"
    string += "var common = require('../common/common.js');\n" 
    string += "\n\n"
    
    string += "var url = \"" + url + "\";\n"
    string += "\n\n"
    
    string += "var nodes = [\n"        
    for i in range(len(nodes)):
        string += "\tfunction(input) {\n"
        string += "\t\treturn new LambdaNode(input.data, input, function(input, scanEvents, node) {\n"
        node = nodes[i]
        for line in node:
            string += "\t\t\t" + line
        string += "\t\t});\n"
        string += "\t}"
        if i < len(nodes)-1:
            string += ","
        string += "\n"
    string += "];\n"
    string += "\n\n"
    
    string += "module.exports = new LambdaSite(url, " + maxrequests + ", " + concurrentrequests + ", nodes);"  
    
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