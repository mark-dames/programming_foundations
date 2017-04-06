def valid_number?(number)
  number.to_i.to_s == number
end

# separate method to check for integer or float
def valid_apr_rate?(rate)
  rate.to_i.to_s == rate || rate.to_f.to_s == rate
end

def prompt(string)
  puts "=> #{string}"
end

prompt 'Welcome to the Mortage loan calculator!'

user_name = ''
loop do
  prompt 'Please enter your name:'
  user_name = gets.chomp
  break unless user_name.empty?
end

prompt "Hello, #{user_name}"

loop do
  loan_amount = ''
  loop do
    prompt 'Please enter the loan amount:'
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt 'Hmm. That is not a valid number.'
    end
  end

  apr_rate = ''
  loop do
    prompt 'What is the Annual Percentage Rate?'
    apr_rate = gets.chomp
    if valid_apr_rate?(apr_rate)
      break
    else
      prompt 'Hmm. That is not a valid Annual Percentage Rate'
    end
  end

  loan_duration_in_years = ''
  loop do
    prompt 'What is the loan duration in years?'
    loan_duration_in_years = gets.chomp
    if valid_number?(loan_duration_in_years)
      break
    else
      prompt 'Hmm. That is not a valid duration.'
    end
  end
  
  m = apr_rate.to_f / 12 / 100 # monthly interest rate
  l = loan_amount.to_i # loan amount
  n = loan_duration_in_years.to_i * 12 # loan duration in months

  monthly_payment = l * (m / (1 - (1 + m)**-n))

  prompt "The amount you need to pay per month is #{monthly_payment.round(2)}"

  prompt 'Do you want to run the loan calculator agian?'
  answer = gets.chomp.downcase
  break if answer != 'yes'
end

prompt 'Thank you for using the loan calculator!'
