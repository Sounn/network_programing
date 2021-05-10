require 'open-uri'
url = "http://room601.ise.osaka-sandai.ac.jp/loginfree.jpg"
file = open(url)
puts file.read
puts file.base_uri