CXX := g++
CXXFLAGS := --std=c++11 -Wall -Werror

OBJ_FILES := haha.o nohehe.o hehe.o

all: powerful restor
	$(shell mv restor restore)

restor: restore.cpp $(OBJ_FILES)
	$(CXX) $(CXXFLAGS) $^ -o $@

powerful: powerful.cpp hehe.o
	$(CXX) $(CXXFLAGS) $^ -o $@

haha.o: haha.cpp player.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

hehe.o: hehe.cpp card.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

nohehe.o: nohehe.cpp deck.h
	$(CXX) $(CXXFLAGS) -c $< -o $@

.PHONY: restore

restore: 
	rm -f *.o powerful Restore