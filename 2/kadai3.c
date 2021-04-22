//1~13を被りなしで出力
#include <stdio.h>
#include <time.h>

int
drawcard (void)
{
  int num = (rand () % 13 + 1);;
  static int array[12] = {};
  int arrayNum = sizeof array / sizeof array[0];
  int bool = 0;
  while(bool == 0){
    for(int i=0;i<= arrayNum;i++){
      if(array[i] == num){
        num = (rand () % 13 + 1);
        bool == 0;
        break;
      }else if(array[i]==0){
        array[i] = num;
        return num;
      }
    }
  }
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