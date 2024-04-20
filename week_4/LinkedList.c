#include <stdio.h>
#include <stdlib.h>

// Define a structure for a node in the linked list
struct Node {
    int data;
    struct Node* next;
};

void insertAtBeginning(struct Node** head_ref, int new_data) {
    struct Node* new_node = (struct Node*)malloc(sizeof(struct Node));
    if (new_node == NULL) {
        printf("Memory allocation failed.\n");
        return;
    }
    new_node->data = new_data;
    new_node->next = *head_ref;
    *head_ref = new_node;
}

void printLinkedList(struct Node* node,int n) {
    for(int i=0;i=n;i++){
        printf("%d -> ", node->data);
        node = node->next;
    }
    printf("NULL\n");
}

int main() {

    struct Node* head = NULL;
    int Size ;
    printf("Enter Size of Linked List :");
    scanf("%d",&Size);
    for(int i=0;i<Size;i++){
    	insertAtBeginning(&head,i);
    }
    printf("Linked List: ");
    printLinkedList(head,Size);
    return 0;
}

