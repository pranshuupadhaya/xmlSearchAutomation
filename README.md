# xmlSearchAutomation
--------------------------------------------------------------README---------------------------------------------------
Version:        1.0
Author:         Pranshu Upadhaya
Creation Date:  <9/28/2017>
Purpose/Change: Initial script development


--The script copies the xml files which match the search criteria.
--In this case it will look for particular xml files whose names are in some format described below.
--It will extract the integer id from the name  and copy the file to destination folder only if the id falls within certain range(lower bound and upper bound)
 
nameFormat-  "YYYYMMDD-(digits)-(digits)_(digits)_(id)_(digits)_(sometimestamp).xml"
eg:  20170703-093819-893_3867_1_158_20170703223303.xml



Steps:

1. Clear everything in "dir_input.txt" file and paste the directory path of the folder contaning all the xml files in "dir_input.txt" and save the file.

EXAMPLE- if all the xml files are in the folder called ABC, which in turn is located in D drive , then paste the following without double quotes.

"D:/ABC"


2. Clear everything in "dir_output.txt" file and paste the directory path of the folder where you want to copy all the searched xml files in "dir_output.txt" and save the file.
All the xml files matching the search criteria will be copied to this folder.

EXAMPLE- if all the xml files are in the folder called XYZ, which in turn is located in D drive , then paste the following without double quotes.

"D:/XYZ"

3. Enter the integer range values in the text file "range.txt" in the following format and save the file:-
	-first line contains the lower bound(inclusive) only, without any additional spaces or characters.
	-second line contains the upper bound(inclusive) only, without any additional spaces or characters.

4.Now right click on the file xmlSearch.bat and click "Run as Administrator".

5.The matching files will be copied to the output folder.
