# Using the each method, write some code to output all of the vowels from the strings.

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

vowels = %w(a e i o u)

hsh.each do |_, value|
  value.each do |string|
    string.chars do |char|
      puts char if vowels.include?(char)
    end
  end
end

# solution using .values

hsh.values.each do |sub_arr|
  sub_arr.each do |str|
    str.chars do |char|
      puts char if vowels.include?(char)
    end
  end
end
