#!/bin/bash

solutionTemplate='#include<bits/stdc++.h>\n\n#define DEBUG false\n#define OJ_DEBUG\n\n#define $(x) {if (DEBUG) {cout << __LINE__ << ": "; {x} cout << endl;}}\n#define _(x) {cout << #x << " = " << x << " ";}\n\nconst double E = 1e-8;\nconst double PI = acos(-1);\n\nusing namespace std;\n\nclass Solution{\npublic:\n\tvector<int> problem(vector<int>& nums){}\nprivate:\n};\n\nint main(){\n\tios::sync_with_stdio(false);\n\n}'
makefileTemplate='run-%:\n\tg++ $*.cpp\n\t./a.out < input/$*.txt\n\ndebug-%:\n\tg++ -g $*.cpp\n\tgdb -ex "run < input/$*.txt" ./a.out'

read -p "Type filename: " fileName
read -p "Type number of questions: " numberOf_Questions

function createFiles(){
    mkdir $fileName
    cd $fileName
	echo -e "$makefileTemplate" > Makefile #Create MakeFile
	mkdir input
    for((i=0;i<$numberOf_Questions;i++));do
        echo -e "$solutionTemplate" > $i.cpp #Create Solution's Template
		touch input/$i.txt #Create empty folers for input
    done
}

createFiles
