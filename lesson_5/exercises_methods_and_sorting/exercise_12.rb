# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysees', author: 'James Joyce', published: '1922'}
]

result = books.sort_by do |book|
  book[:published]
end

p result

=begin
  Calling the sort_by method on the array. book represents each hash in the array. [:published]
  returns each year as a string which sort_by uses for comparing. Because each year is 4 characters in length we do
  not have to convert to an integer.
=end
