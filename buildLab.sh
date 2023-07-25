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

gray() {
    echo -e "\e[90m${1}\e[0m"
}

selectTemplate(){
	while true; do
		echo -e "\e[90m=========\e[0m Select your \e[32mC++ Template\e[0m \e[90m=========\e[0m"
		echo -e "If you don't know what choose, select \e[32mBasic\e[0m"
		echo -e "\e[32m1\e[0m) \e[32mBasic\e[0m - 32 lines"
		echo -e "\e[33m2\e[0m) \e[33mStandard\e[0m - 40 lines"
		echo -e "\e[31m3\e[0m) \e[31mComplex\e[0m - 58 lines"
		echo -e "\e[95m4\e[1m) \e[95mMaster\e[0m - 101 lines"
		gray "============================================"
		echo -n "My choice is: "
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
			4)
				template="master"
				break
			;;
			*)
				echo -e "\e[31m<Invalid Choice>\e[0m Please, select a valid option"
			;;
		esac
	done
}

settings(){
	selectBranch $1
	selectTemplate
	printf "\nDownloading template ...\n"
	solutionTemplate=$(curl -s https://raw.githubusercontent.com/propilideno/cp-tips/$branch/templates/cpp/$template.cpp)
	makefileTemplate=$(curl -s https://raw.githubusercontent.com/propilideno/cp-tips/$branch/templates/cpp/Makefile)
	printf "Complete!\n\n"
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
