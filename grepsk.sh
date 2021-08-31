echo "<!DOCTYPE html>" > skill.html
echo "<html>" >> skill.html
echo "<body>" >> skill.html
echo "<table>" >> skill.html
echo "<tr><th>Skill</th><th>Resume</th></tr>" >> skill.html
ls -l *.pdf | awk '{ print $9 }' > tmp_file
new_file="tmp_file"
skill_list=$(cat skillToSearch)
for skills in `cat skillToSearch`
do
        echo "Iteration for  $skills"
        res=$(touch files_with_$skills.txt)
        res=$(touch files_with_comm_skills.txt)
        res=$(touch files_with_comm_$skills.new.txt)
        pdfgrep -i $skills *.pdf | awk -F":" '{print $1 }' | uniq > files_with_$skills.txt
        echo "Running cat for $skills"
        cat files_with_$skills.txt
        echo " Running comm between   $new_file  and files_with_$skills.txt  and output file files_with_comm_$skills.new.txt"
        out=$(comm  -12 --nocheck-order $new_file files_with_$skills.txt > files_with_comm_$skills.new.txt )
        new_file="files_with_comm_$skills.new.txt"
        echo " output of  common skills file $new_file"
        cat $new_file
done
for pdfiles in `cat $new_file`
do
                echo "<tr><td>$skill_list</td><td><a href="$pdfiles">$pdfiles</a></td></tr>" >> skill.html
done
echo "</table>" >> skill.html
echo "</body>" >> skill.html
echo "</html>" >> skill.html
