run-%:
	g++ -O2 -Wall $*.cpp
	./a.out < input/$*.txt

debug-%:
	g++ -g -02 -Wall $*.cpp
	gdb -ex "run < input/$*.txt" ./a.out
