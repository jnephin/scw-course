pwd #print working directory
ls #list the files in my directory
ls -F #put a trailing / on the end of files
cd #change directory
cd Desktop #cd to the Desktop
cd /home/jessica/Desktop #use file path to go to dir
cd .. #go to directory above the one im in
ls Desktop #list file that are in the dir instead of cd into it
mkdir thesis #make a dir in your cwd called thesis
nano outline.txt #create file using nano
cp outline.txt copy_outline.txt #make copy of outline called copy_outline
mv copy_outline.txt temp/ #move file to new dir temp
mv outline.txt draft.txt #renaming by moving them
rm draft.txt #remove file
rmdir temp #remove dir (only working for empty dir)
wc 	#word count of text file
wc -l 	#number of lines in your file
wc -l  *.txt	#total number of lines in all files in that dir
wc -l  *.txt > lengths #print number of lines to file lengths
cat lengths # look inside the file
sort lengths #sort by the length of rows
sort lengths > sort_lengths # store in file called sort_lengths
head sort_lengths # look at the head
tail sort_lengths # look at the tail
wc -l  *.txt | sort | tail # wc all files then sort that, take tail of sort using "pipe"
python goostats.py  NENE01751A.txt #run .py script in python using .txt as input
python goostats.py  NENE01751A.txt | head -1 #get the first row of output only -> use shell script to access pthyon script output
head -50 NENE01751A.txt | python goostats.py > goostats_NENE01751A #take fist 50 row only before you run the .py script
for dataset in *.txt #for loop to move through each .txt, dataset could be any variable name
do echo $dataset #print the variable, $ tells it that its a variable
done
for dataset in *.txt; do echo $dataset; done # all on one line, no semicolon after do (weird)
for dataset in *.txt; do echo $dataset; python goostats.py $dataset; done #print .py script output for each .txt 
history # list the last few hundred commands
! # bang - run the line number of that command you see in the history
history | tail -10 > code.sh # get the last 10 line of code and save them to a file
bash code.sh #run the code in bash


