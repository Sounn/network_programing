#! /usr/bin/env ruby

require 'open-uri'
require 'csv'
require 'gruff'

url = "https://covid19-osaka.info/data/summary.csv"
file = open(url)

sum = 0

g = Gruff::Line.new
g.title = 'aa'
array_new = [];
# array_sum = [];
CSV.foreach(file, encoding: 'Shift_JIS:UTF-8') do |row|
  sum += row[2].to_i
  array_new.push(row[2].to_i)
  # array_sum.push(sum) 
  
end

g.data :new, array_new
# g.data :sum, array_new
g.write('covid19-osaka.png')