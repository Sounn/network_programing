#ファイル読み込み
require 'open-uri'
url = "http://www0.ise.osaka-sandai.ac.jp/%7Eandrew/NP/S/s36"

total = 0
open(url) do |f|
  f.each_line{ |line|
    total += line.to_f
  }
end

if total == total.to_i
  total = total.to_i
end

puts total
