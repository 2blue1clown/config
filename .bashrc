#Changes the bash prompt
PS1="\[\033[33m\]\A \[\033[30m\]\u:$ "

#Functions

#cd + ls

function cdls {
	cd "$@" && ls -l;
}

#run mit-scheme

function runscheme {
	scheme < $1
}

#load mit-scheme

function loadscheme {
	scheme --load $1
}

#clean mit-scheme

function cleanscheme {
	runscheme $1 | ./schemeOutputProcessor
}

# Make and run graphics files for CITS3003

function rungraphics {
	echo "make $1"
	make $1
	echo "./$1"
	./$1
}

#Aliases

alias mycc="cc -std=c99 -Wall -Werror"
alias mapIt="/mnt/c/Users/jonol/OneDrive/Documents/automateTheBoringStuff/mapIt.py"
alias ls="ls -gh"

#For CITS2200 (Data Structures and Algorithms)

#To run non-JUnit files use myjava, but use junitjava to run the FileTest classes 
alias myjavac="javac -cp /mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/CITS2200.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/hamcrest-core-1.3.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/junit-4.13.2.jar:."
alias myjava="java -cp /mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/CITS2200.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/hamcrest-core-1.3.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/junit-4.13.2.jar:."
alias junitjava="java -cp /mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/CITS2200.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/hamcrest-core-1.3.jar:/mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1/CITS2200/jars/junit-4.13.2.jar:. org.junit.runner.JUnitCore"

#When opening the Shell
echo "Greetings $(whoami)"
echo -n You are currently in:
pwd

#Changes the directory to where I am usually working from
cdls /mnt/c/Users/jonol/OneDrive/Documents/Bachelors_Degree/2021Sem1 

export DISPLAY=:0
alias fixCITS3003='for f in *.cpp; do echo "Fixing $f"; sed -i "s/glutInitContextVersion/\/\/glutInitContextVersion/g" $f; sed -i "s/glutInitContextProfile/\/\/glutInitContextProfile/g" $f; done; for f in *.glsl; do echo "Fixing $f"; sed -i "s/#version 150/#version 140/" $f; done && echo "All files fixed"'


