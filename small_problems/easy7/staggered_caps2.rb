def staggered_case(string, need_upper = false)
  result = ''
  string.chars.each do |char|
    if char =~ /[^A-Za-z]/
      result += char
    elsif need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result 
end


puts staggered_case('I Love Launch School!', true) == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'aLl_cApS'
puts staggered_case('ignore 77 the 444 numbers', true) == 'IgNoRe 77 ThE 444 NuMbErS'
