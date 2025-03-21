#include <iostream>


// complete the implementation of the node class. It defines a linked list.
// one or more of the functions are wrong, you must correct these and also implement the destructor.

class Node {
private:
    int *chain_value;
    Node* nxtptr;
public:
    Node(int size) {
        chain_value = new int[size];
    }
    
    void setValue(int loc, int val) {
        if (loc >= sizeof(chain_value) || loc < 0) {
            std::cout << "Bad location, will exit." << std::endl;
            return;
        }
        chain_value[loc] = val;
    }

    void setNxtPtr(Node nxt) {
        nxtptr = &(nxt);
    }

    Node* getNxtPtr() {
        return nxtptr;
    }

    ~Node() {
        // make sure to free up anything that was allocated with the new keyword
        // it must delete all nodes that come after it. (recursion??? keyword: delete)
        
    }
};