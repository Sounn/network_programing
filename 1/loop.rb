#ループ構文を使わないループ
def loop(a,b)
  if (a<b)
    puts a
    a+=1
    loop(a,b)
  else
    puts a
  end
end

loop(1,100)