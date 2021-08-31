Steps to generate HTML file with a table of skills to Resume mapping

copy all the pdf files to current directory

Uupdate the File "skillToSearch" with list of skills  -  Ex : C Linux C++

Run the shell script

sh grepsk.sh

cat skill.html

Open the skill.html file in browser

OUTPUT:

<!DOCTYPE html>
<html>
<body>
<table>
<tr><th>Skill</th><th>Resume</th></tr>
<tr><td>C Linux Multithreading Cloud</td><td><a href=resume3.pdf>resume3.pdf</a></td></tr>
</table>
</body>
</html>
