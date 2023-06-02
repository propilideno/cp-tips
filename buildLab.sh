#!/bin/bash

solutionTemplate=$(cat templates/c++/basic.cpp)
makefileTemplate='run-%:\n\tg++ $*.cpp\n\t./a.out < input/$*.txt\n\ndebug-%:\n\tg++ -g $*.cpp\n\tgdb -ex "run < input/$*.txt" ./a.out'

function chr() {
	local ascii_Value=$(awk -v v="$1" 'BEGIN{printf "%c", v}')
	echo "$ascii_Value"
}

function createFiles(){
	read -p "Type filename: " fileName
	read -p "Type number of questions: " numberOf_Questions
    mkdir $fileName
    cd $fileName
	echo -e "$makefileTemplate" > Makefile #Create MakeFile
	mkdir input
    for((i=97;i<97+$numberOf_Questions;i++));do
		solutionName=$(chr $i)
        echo -e "$solutionTemplate" > $solutionName.cpp #Create Solution's Template
		touch input/$solutionName.txt #Create empty folers for input
    done
}

function greetings(){
    printf "\n==> All files was created with SUCCESS !!!\n"
    echo "==> Contribute with us giving this repo a Star ⭐"
    echo "Maintainers:"
    printf "\t - Lucas R. de Almeida       | @propilideno\n"
	echo "Honorable Mentions:"
    printf "\t - Giovanni V. Comarela      | gc@inf.ufes.br\n"
    exit 1
}

function main(){
	createFiles
	greetings
}

main
