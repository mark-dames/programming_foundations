OPEN = ["(", "[", "{",]
CLOSE = [")", "]", "}"]

def balanced?(string)
  parens = 0
  string.each_char do |char|
    parens += 1 if OPEN.include?(char)
    parens -= 1 if CLOSE.include?(char)
    break if parens < 0
  end

  parens.zero?
end

puts balanced?('What (is) this?') == true
puts balanced?('What is) this?') == false
puts balanced?('What (is this?') == false
puts balanced?('((What) (is this))?') == true
puts balanced?('((What)) (is this))?') == false
puts balanced?('Hey!') == true
puts balanced?(')Hey!(') == false
puts balanced?('What ((is))) up(') == false
puts balanced?('What [[is]] up') == true
