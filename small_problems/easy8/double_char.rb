def repeater(string)
  repeater = string.chars.map do |char|
    char * 2
  end
  repeater.join
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
puts repeater(' ') == '  '
puts repeater('510') == '551100'

#using each_char

def repeater(string)
  repeater = ''
  string.each_char do |char|
    repeater << char << char
  end
  repeater
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''
puts repeater(' ') == '  '
puts repeater('510') == '551100'
