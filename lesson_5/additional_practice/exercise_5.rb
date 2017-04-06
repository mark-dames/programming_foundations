flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |name, idx|
  if name.start_with?('Be')
    puts "#{name} is at index #{idx}"
  end
end

puts flintstones.find_index { |name| name.start_with?('Be') }

puts flintstones.index { |name| name[0,2] == 'Be'}
 
