# def say(name,age)
#     puts ("my name is " +name "and my age is " + age.to_s );
# end
# say ("wahab", 12);
#}

puts "Enter First number:"
num1 = gets.chomp(num1).to_f

puts "enter operator:"
op = gets.chomp(op)

puts "Enter last number:"
num2 = gets.chomp(num2).to_f

if op == "+"
  puts  (num1 + num2)

elsif
    op == "-"
    puts (num1 - num2)
else 
    puts "invalid"
end