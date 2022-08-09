=begin
arr =[1, 2, 3, 4, 1, 1, 1, 2, 3, 11, 11, 2, 33] 
freq = Hash.new(0)
arr.each { |x| freq[x] += 1 }
freq.map{ |key, value| 
    puts " #{key}=>#{value}" }
    
=end

=begin
arr = [1, 2, 3, 4, 5]
sum=0
for i in 0..(arr.length-1) do
    sum=sum + arr[i]
    puts " #{arr[i]}=>#{sum}"
end
=end

def random_password
  specials = ((32..47).to_a + (58..64).to_a + (91..96).to_a + (123..126).to_a).pack('U*').chars.to_a
  numbers  = (0..9).to_a
  alpha    = ('a'..'z').to_a + ('A'..'Z').to_a
  %w{i I l L 1 O o 0}.each{ |ambiguous_character| 
    alpha.delete ambiguous_character 
  }
  characters = (alpha + specials + numbers)
  password = Random.new.rand(8..18).times.map{characters.sample}
  password << specials.sample unless password.join =~ Regexp.new(Regexp.escape(specials.join))
  password << numbers.sample  unless password.join =~ Regexp.new(Regexp.escape(numbers.join))
  password.shuffle.join
  puts password
end
