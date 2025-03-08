#include <assert.h>
#include <stdio.h>

int next_turn(int total, int possible){
    int a, b, temp;
    a = 1;
    b = 1;
    while (b <= total){
        temp = b;
        b = a + b;
        a = temp;
    }
    while (total != 0)
    {
        if (a <= total){
            total -= a;            
        }
        temp = a;
        a = b - a;
        b = temp; 
    }
    
    if (b <= possible) return temp;
    return 1;
}

int main()
{
    int n, q, res;

    res = scanf("%d%d", &n, &q);
    assert(res == 2);

    n = next_turn(n, q);
    printf("%d\n", n);

    return 0;
}