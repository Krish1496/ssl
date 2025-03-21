CXX = g++
CXXFLAGS = -std=c++20

.PHONY: debug clean

EXE = main
OBJ = array.o onething.o otherthing.o onemore.o

all: debug

debug: $(EXE) $(OBJ)
	$(shell mv *.o ./debug)
	$(shell mv $(EXE) ./debug)

$(EXE): main.cpp $(OBJ)
	$(CXX) $(CXXFLAGS) $^ -o $@
	$(shell mkdir debug)

%.o: %.cpp %.hpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	rm -f ./debug/*
	rmdir ./debug
