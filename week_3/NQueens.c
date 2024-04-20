#include <stdbool.h>
#include <stdio.h>
#include "Functions.h"

void printBoard(int board[MAX_SIZE][MAX_SIZE], int n) {
    for (int i = 0; i < n; i++) {
        for (int j = 0; j < n; j++) {
            printf("%d ", board[i][j]);
        }
        printf("\n");
    }
    printf("\n");
}

int isSafe(int board[MAX_SIZE][MAX_SIZE], int row, int col, int n) {
    int i, j;
    for (i = 0; i < col; i++) {
        if (board[row][i]) {
            return 0;
        }
    }
    for (i = row, j = col; i >= 0 && j >= 0; i--, j--) {
        if (board[i][j]) {
            return 0;
        }
    }
    for (i = row, j = col; j >= 0 && i < n; i++, j--) {
        if (board[i][j]) {
            return 0;
        }
    }
    return 1;
}

void solveNQueens(int n) {
    int board[MAX_SIZE][MAX_SIZE] = {0};
    struct Stack positions;
    initialize(&positions);
    push(&positions, 0);
    while (!isEmpty(&positions)) {
        int col = pop(&positions);
        if (col == n) {
            printBoard(board, n);
            return;
        }
        bool placed = false;
        for (int i = 0; i < n; i++) {
            if (isSafe(board, i, col, n)) {
                board[i][col] = 1;
                push(&positions, col + 1);
                placed = true;
                break;
            }
        }
        if (!placed) {
            if (!isEmpty(&positions)) {
                int prev_col = pop(&positions);
                if (prev_col == n - 1) {
                    return;
                }
                for (int i = 0; i < n; i++) {
                    if (board[i][prev_col] == 1) {
                        board[i][prev_col] = 0;
                        break;
                    }
                }
                push(&positions, prev_col + 1);
            }
        }
    }
    printf("Solution does not exist\n");
}
