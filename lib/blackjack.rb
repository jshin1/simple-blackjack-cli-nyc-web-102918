def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  input = gets.chomp
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  sum = 0
  sum += deal_card
  sum += deal_card
  display_card_total(sum)
  sum
end

def hit?(card_total)
  # code hit? here
  total = card_total
  prompt_user
  the_input = get_user_input
  if the_input == 'h'
    total += deal_card
  elsif the_input == 's'
    total
  else
    invalid_command
  end
end

def invalid_command
  # code invalid_command here
  if input != 'h' || input != 's'
    puts "Please enter a valid command"
  end
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  initial_round
  sum = initial_round
  until sum > 21
    display_card_total(sum)
    hit?(sum)
    sum = hit?(sum)
  end
  end_game(sum)
end
