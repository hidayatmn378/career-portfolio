<!--Part 1 - Configuring the shell environment-->

<!--Configure .bashrc-->
open terminal ctrl + alt + t
gedit .bashrc

<!--inside the .bashrc type -->
<!--alias-->
alias srcDoc='cd ~/Documents' 
>> srcDoc

## PATH
export pathToAPIKeys="/home/ocean/Documents/apiKeys.sh"

## Source API Keys
echo "I am sourcing this path: " $pathToAPIKeys
source $pathToAPIKeys

>>export pathToAPIKeys="/home/ocean/Documents/apiKeys.sh"
>>echo pathToAPIKeys
>>echo $pathToAPIKeys

## sourcing conda virtual env
echo "I am sourcing conda pydap virtual env"
conda activate pydap

>>which python

<!--Part 2 - Working with shell variables-->
>>export FOOD='apple'
>>echo $FOOD
>>echo "I love " $FOOD

<!--Parent/child shell variables-->
<!--No child shell access-->
>>VAR=1
>>echo $VAR
>>bash
>>echo $VAR
<!--Child shell access-->
>>export VAR2=1
>>echo $VAR2
>>bash
>>echo $VAR2

<!--in the .bashrc-->
ctrl + alt + t
gedit .bashrc
type:
##my custom variables
export API_KEY="ABCD"

ctrl + alt + t
>>echo $API_KEY
>>bash
>>echo $API_KEY

<!--Source-Script (parent/child)-->
>>touch run.sh
>>gedit run.sh
type:
export ANIMAL="Bear"
echo "This is a carnivore"
>>chmod +x run.sh
>>./run.sh
>>echo $ANIMAL

touch env.sh
>>gedit env.sh
type:
export FOOD="Apple"
echo "This is a fruit"
>>chmod +x env.sh
>>source env.sh
>>echo $FOOD

ctrl + alt + t
>>cd /home/ocean/Documents/career-portfolio/Coursera_Project/Linux\ and\ Bash\ for\ Data\ Engineering/Week\ 2
>>touch projENV.sh
>>gedit projENV.sh
type:
export SECRET="ABCD"
ctrl + alt + t
gedit .bashrc
type:
##aliases and exports
alias myproject="cd /home/ocean/Documents/career-portfolio/Coursera_Project/Linux\ and\ Bash\ for\ Data\ Engineering/Week\ 2 && source /home/ocean/Documents/career-portfolio/Coursera_Project/Linux\ and\ Bash\ for\ Data\ Engineering/Week\ 2/projENV.sh"
>>alias
>>myproject
>>echo $SECRET

<!--Part 3 - Standard streams-->
<!--a. standard out-->

<!--filtering: sort and uniq-->
echo -e "Apple\nCarrot\nBanana" | sort
echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c

ctrl + alt + t
>>echo -e "Apple\nCarrot\nBanana" | sort
>>echo -e "Apple\nCarrot\nBanana" | sort > fruit.txt
>>less fruit.txt 
>>q
>>cat fruit.txt
<!--append-->
>>echo -e "Apple\nCarrot\nBanana" >> fruit.txt 
>>cat fruit.txt
<!--counts a uniq item-->
>>echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c

<!--grep-->
echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c
ps -ef | grep python

>>echo -e "Apple\nCarrot\nBanana\nApple" | sort | uniq -c | grep Apple
>>ps -ef
>>ps -ef | grep python

<!--rev-->
>>echo 1993
>>echo 1993 | rev

<!--b. standard in-->
<!--ask for user input-->
read -p 'File: ' FILENAME

>>touch input.sh
>>gedit input.sh
type:
#!/bin/bash
read -p 'File: ' FILENAME
FPATH=`readlink -f $FILENAME`
echo 'Full path: ' $FPATH

>>chmod +x input.sh
>>./input.sh
File: new_fruit.txt

<!--put it into a script-->
>>cat fruit.txt 
>>less <fruit.txt

<!--c. standard error-->
<!--create error-->
>>ls -l /var/FAKEDIR 2
>>ls -l /var/FAKEDIR 2>error.txt
<!--append-->
>>ls -l /var/FAKEDIR 2>>error.txt
<!--Throw error away-->
>>ls -l /var/FAKEDIR 2>>/dev/null
