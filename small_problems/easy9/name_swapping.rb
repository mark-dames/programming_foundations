def swap_name(name)
  name.split.reverse.join(', ')
end

puts swap_name('Joe Roberts') == 'Roberts, Joe'
puts swap_name('Egbert Boersma') == 'Boersma, Egbert'
