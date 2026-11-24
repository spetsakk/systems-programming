#include <stdio.h>
#include <stdlib.h>

int count=5;

int main(void)
{
    int *numbers = malloc(count * sizeof *numbers);

    if(numbers==NULL) return 1; 
    numbers[0]=0;
    for(short i=0; i<count;++i) {numbers[i]=(i+1)*10;   printf("%d\n", numbers[i]);}

    free(numbers);

    return 0;
}



