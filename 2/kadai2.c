//1~13を13回ランダム出力
#include <stdio.h>
#include <time.h>

int
drawcard (void)
{
  return rand () % 13 + 1;
}

int
main (void)
{
  int r;
  srand ((int) time (NULL));
  for(int i= 0; i <13; i++){
    r = drawcard ();
    printf ("%d\n", r);
  }
  
}