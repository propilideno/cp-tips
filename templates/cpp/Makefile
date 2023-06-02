run-%:
	g++ $*.cpp
	./a.out < input/$*.txt

debug-%:
	g++ -g $*.cpp
	gdb -ex "run < input/$*.txt" ./a.out
