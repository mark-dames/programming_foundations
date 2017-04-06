def generator_UUID
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'s').each { |digit| characters << digit }
  
  uuid = ''
  sections = [8,4,4,4,12]
  sections.each_with_index do |section, index|
    section.times { uuid += characters.sample}
    uuid += '-' unless index >= sections.size - 1
  end
  uuid
end

puts generator_UUID