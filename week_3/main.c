#include <stdio.h>
#include "Functions.h"

int main() {
    int n;
    printf("Enter no.of Queens : ");
    scanf("%d",&n);
    solveNQueens(n);
    return 0;
}
