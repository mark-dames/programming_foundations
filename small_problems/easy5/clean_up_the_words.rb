def cleanup(string)
  string.downcase.gsub /\W+/, ' '
end

puts cleanup("---what's my +*& line?") == ' what s my line '

# another way
def cleanup(string)
  string.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

puts cleanup("---what's my +*& line?") == ' what s my line '
