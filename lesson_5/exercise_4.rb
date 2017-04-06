hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

# The letters A, E, I, O, and U are called vowels.
vowels = %w( a e u i o)

hsh.values.flatten.each do |word|
  word.chars do |char|
    puts char if vowels.include?(char)
  end
end

vowels = 'aeiou'

hsh.each do |_, value|
  value.each do |str|
    str.chars.each do |char|
      puts char if vowels.include?(char)
    end
  end
end



