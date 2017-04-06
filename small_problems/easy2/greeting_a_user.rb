puts 'What is your name?'
name = gets.chomp

if name.include?('!')
  puts "Hello, #{name.delete('!')}. Why are we screaming?".upcase
else
  puts "Hello, #{name}"
end

print 'What is your name? '
name = gets.chomp

if name[-1] == '!'
  name.chop!
  puts "HELLO, #{name.upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello, #{name}"
end



