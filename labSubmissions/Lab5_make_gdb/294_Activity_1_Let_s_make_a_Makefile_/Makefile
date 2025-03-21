CXX = g++
CXXFLAGS = -Wall -std=c++17

SRCS_SRC1 = $(shell find src/src1 -name "*.cpp")
OBJ_SRC1 = $(patsubst src/src1/%.cpp, %.o, $(SRCS_SRC1))

SRCS_SRC2 = $(shell find src/src2 -name "*.cpp")
OBJ_SRC2 = $(patsubst src/src2/%.cpp, %.o, $(SRCS_SRC2))

SRCS_MAIN = $(shell find main -name "*.cpp")
EXE_MAIN = $(patsubst main/%.cpp, %, $(SRCS_MAIN))

all: $(EXE_MAIN) $(OBJ_SRC1) $(OBJ_SRC2)

%: main/%.cpp $(OBJ_SRC1) $(OBJ_SRC2)
	$(CXX) $(CXXFLAGS) -o $@ $^

%.o: src/src1/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

%.o: src/src2/%.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: clean

clean:
	rm -f *.o main[1-9]