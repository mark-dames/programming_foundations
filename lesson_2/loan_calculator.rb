def valid_number?(number)
  number.to_i > 0
end

# separate method to check for integer or float
def valid_apr_rate?(rate)
  valid_number?(rate) || rate.to_f > 0
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
    break if valid_number?(loan_amount)
    prompt 'Hmm. That is not a valid number.'
  end

  apr_rate = ''
  loop do
    prompt 'What is the Annual Percentage Rate?'
    apr_rate = gets.chomp
    break if valid_apr_rate?(apr_rate)
    prompt 'Hmm. That is not a valid Annual Percentage Rate'
  end

  loan_duration = ''
  loop do
    prompt 'What is the loan duration in years?'
    loan_duration = gets.chomp
    break if valid_number?(loan_duration)
    prompt 'Hmm. That is not a valid duration.'
  end
  monthly_rate = apr_rate.to_f / 12 / 100 # monthly interest rate
  loan_amount = loan_amount.to_i # loan amount
  loan_duration = loan_duration.to_i * 12 # loan duration in months

  monthly_payment = loan_amount * 
                    (monthly_rate / (1 - (1 + monthly_rate)**-loan_duration))

  prompt "The amount you need to pay per month is #{monthly_payment.round(2)}"

  answer = ''
  loop do
    prompt 'Do you want to run the loan calculator agian? Enter yes or no.'
    answer = gets.chomp
    break if answer == 'yes' || answer == 'no'
  end
  break if answer == 'no'
end

prompt 'Thank you for using the loan calculator!'
