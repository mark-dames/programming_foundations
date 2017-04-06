def print_in_box(string)
  lines = ''
  string.size.times { lines << '-'}
  spaces = ''
  string.size.times { spaces << ' '}
  puts "+--" + lines + "+"
  puts "|  " + spaces + "|"
  puts "| #{string} " + "|"
  puts "|  " + spaces + "|"
  puts "+--" + lines + "+"
end

print_in_box('mark from Holland')
print_in_box('')
print_in_box('Amsterdam is a great city!')
print_in_box('To boldly go where no one has gone before.')
