#include <iostream>
#include <vector>

const int ROWS = 6;
const int COLS = 7;
const char EMPTY = '.';
const char PLAYER1 = 'X';
const char PLAYER2 = 'O';

// Initialize board with empty cells
void initializeBoard(std::vector<std::vector<char>>& board) {
    board = std::vector<std::vector<char>>(ROWS, std::vector<char>(COLS, EMPTY));
}

// Print the board in ASCII format
void printBoard(const std::vector<std::vector<char>>& board) {
    std::cout << "\n 1 2 3 4 5 6 7\n";  // Column numbers
    for (const auto& row : board) {
        std::cout << "|";
        for (char cell : row) {
            std::cout << cell << "|";
        }
        std::cout << "\n";
    }
    std::cout << "---------------\n";  // Bottom border
}

// Drop a piece in the chosen column
bool dropPiece(std::vector<std::vector<char>>& board, int col, char player) {
    if (board[0][col - 1] != EMPTY) {
        std::cout << "Invalid move! Try again.\n";
        return false;
    }

    for (int row = ROWS - 1; row >= 0; --row) {
        if (board[row][col - 1] == EMPTY) {
            board[row][col - 1] = player;
            return true;
        }
    }
    return false;
}

// Check for a win (horizontal, vertical, diagonal)
bool checkWin(const std::vector<std::vector<char>>& board, char player) {
    // Check horizontal
    for (int r = 0; r < ROWS; ++r)
        for (int c = 0; c <= COLS-4; ++c)
            if (board[r][c] == player && board[r][c + 1] == player &&
                board[r][c + 2] == player && board[r][c + 3] == player)
                return true;

    // Check vertical
    for (int c = 0; c < COLS; ++c)
        for (int r = 0; r<=(ROWS-4); ++r)
            if (board[r][c] == player && board[r + 1][c] == player &&
                board[r + 2][c] == player && board[r + 3][c] == player)
                return true;

    // Check diagonal (\)
    for (int r = 0; r < ROWS-3; ++r)
        for (int c = 0; c <= COLS-4; ++c)
            if (board[r][c] == player && board[r + 1][c + 1] == player &&
                board[r + 2][c + 2] == player && board[r + 3][c + 3] == player)
                return true;

    // Check diagonal (/)
    for (int r = 3; r < ROWS; ++r)
        for (int c = 0; c <= COLS-4; ++c)
            if (board[r][c] == player && board[r - 1][c + 1] == player &&
                board[r - 2][c + 2] == player && board[r - 3][c + 3] == player)
                return true;

    return false;
}

// Check if the board is full
bool isBoardFull(const std::vector<std::vector<char>>& board) {
    for (int c = 0; c < COLS; ++c)
        if (board[0][c] == EMPTY)
            return false;
    return true;
}

int main() {
    std::vector<std::vector<char>> board;
    initializeBoard(board);
    char currentPlayer = PLAYER1;
    int col;
    printBoard(board);
    std::cout << "Player " << currentPlayer << ", enter column (1-7): ";

    while (std::cin>>col) {

        if (!dropPiece(board, col, currentPlayer)){
            printBoard(board);
            std::cout << "Player " << currentPlayer << ", enter column (1-7): ";
            continue;
        }

        else if (checkWin(board, currentPlayer)) {
            printBoard(board);
            std::cout << "Player " << currentPlayer << " wins!\n";
            break;
        }

        else if (isBoardFull(board)) {
            printBoard(board);
            std::cout << "It's a draw!\n";
            break;
        }

        currentPlayer = (currentPlayer == PLAYER1) ? PLAYER2 : PLAYER1;
        printBoard(board);
        std::cout << "Player " << currentPlayer << ", enter column (1-7): ";
    }

    return 0;
}


