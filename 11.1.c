#include <stdio.h>
#include <ctype.h>
#include <stdbool.h>
#include <string.h>
#include "terminal_user_input.h"


void readLines(int lineNo, char* fileInfo[128], FILE *file_ptr) {
char line[128];
int i = 0;

while ((fgets(line, sizeof(line), file_ptr) != NULL && i != lineNo)) {
fileInfo[i++] = strdup(line);
}
}

void printLines(int lineNo, char* fileInfo[128]) {
for (int i = 0; i < lineNo; i++) {
printf("The file contained: %s", fileInfo[i]);
}
}

int main() {
FILE *file_ptr;
int lineNo;
char* fileInfo[128];

if ((file_ptr = fopen("readwrite.dat", "r")) == NULL) {
printf("File could not be opened");
}
else {
readLines(lineNo, fileInfo, file_ptr);
printLines(lineNo, fileInfo);
}

fclose(file_ptr);
return 0;
}
