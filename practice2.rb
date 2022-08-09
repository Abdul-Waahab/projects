#Random Password Generator

require 'csv'

num = 1
while num <=1 do
key = [("A".."z"),(1..9),("!".."+")].map(&:to_a).flatten
pass = (1...10).map { key[rand(key.length)]}.join
puts pass
num +=num + 1
end

CSV.foreach ('data.csv') do |row|
puts row.inspect
end