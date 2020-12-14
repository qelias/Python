import os
import shutil
import re

dir_to_unzip_path="G:\\Mes Documents\\Documents\\Python\\Notes\\Complete-Python-3-Bootcamp-master\\12-Advanced Python Modules\\08-Advanced-Python-Module-Exercise\\unzip_me_for_instructions.zip"
unzip_location=os.getcwd()+"\\Instructions"
shutil.unpack_archive(dir_to_unzip_path,unzip_location,'zip')

pattern=r'\d{3}-\d{3}-\d{4}'
#pattern=r'\w{10,}'
for i,j,k in os.walk("Instructions\\extracted_content"):
    for file in k:
        filepath=i+'\\'+file
        myfile=open(filepath,'r')
        #print(myfile.read())
        match=re.search(pattern,myfile.read())
        myfile.close()
        if match != None:
            print(f"Pattern found in file {filepath} between indices {match.span()}. Result = {match.group()}")
            
