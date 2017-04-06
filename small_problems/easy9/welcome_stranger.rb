def greetings(name, title)
name_string = name.join(' ')
  puts 'Hello, ' + name_string + "! Nice to have a #{title[:title]}"\
  "#{title[:occupation]} around."
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' }) 
#=> Hello, John Q Doe! Nice to have a Master Plumber around.
greetings(['Jan', 'Egbert', 'de', 'Vries'], {title: 'Marketing', occupation: 'employee'})
#=> Hello, Jan Egbert de Vries! Nice to have a Marketing employee around.
