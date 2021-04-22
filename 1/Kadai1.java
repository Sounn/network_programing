class Kadai1
{
  public static void main(String[] args)
  {
    int i = 1;

    while (i <= 128){
      if(i%15==0){
        System.out.print("AhoBaka");
      }else if(i%3==0){
        System.out.print("Aho");
      }else if(i%5==0){
        System.out.print("Baka");
      }else{
        System.out.print(i);
      }
      System.out.print("\n");
      i++;
    }
  }
}