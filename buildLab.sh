#!/bin/bash

selectBranch(){
	branch="main" #Default Branch
	if [[ $# != 0 ]]; then
		if [[ $1 != "$branch" && "$1" == "up" ]]; then
			branch="develop"
		else
			exit_failure "'$1' is not a valid choice!"
		fi
	fi
}

selectTemplate(){
	while true; do
		echo "=== Select your C++ Template ==="
		echo "If you don't know what choose, select Basic"
		echo "1) Basic"
		echo "2) Standard"
		echo "3) Complex"
		echo "Select desired template: "
		read -r choice
		case "$choice" in
			1)
				template="basic"
				break
			;;
			2)
				template="standard"
				break
			;;
			3)
				template="complex"
				break
			;;
			*)
				echo "<Invalid Choice> Please, select a valid option"
			;;
		esac
	done
}

settings(){
	selectBranch $1
	selectTemplate
	solutionTemplate=$(curl -s https://raw.githubusercontent.com/propilideno/Competitive-Programming-Tips/$branch/templates/cpp/$template.cpp)
	makefileTemplate=$(curl -s https://raw.githubusercontent.com/propilideno/Competitive-Programming-Tips/$branch/templates/cpp/Makefile)
}

chr() {
	local ascii_Value=$(awk -v v="$1" 'BEGIN{printf "%c", v}')
	echo "$ascii_Value"
}

createFiles(){
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

exit_failure(){
	echo "Something got wrong! Check our current documentation in: https://propi.dev/cp"
	if [[ $# != 0 ]]; then
		echo "<ERROR> $1"
	fi
	exit 1
}

greetings(){
    printf "\n==> All files was created with SUCCESS !!!\n"
    echo "==> Contribute with us giving this repo a Star ⭐"
    echo "Maintainers:"
    printf "\t - Lucas R. de Almeida       | hello@propi.dev\n"
	echo "Honorable Mentions:"
    printf "\t - Giovanni V. Comarela      | gc@inf.ufes.br\n"
    exit 1
}

main(){
	settings $1
	createFiles
	greetings
}

main $1
