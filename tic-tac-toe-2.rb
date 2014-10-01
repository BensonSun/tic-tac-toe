#Tic tac toe

#step1: print out a OOXX frame, break it into 9 spaces
#step2: ask user to choose a position
#step3: computer randomly choose a position diiferent from the user's position
#step4: if someone make a line, declare winner;if not declare it's a tie!

require "pry"

def draw(b)
  system ("clear")
  puts "  #{b[1]} | #{b[2]} | #{b[3]} "
  puts "-------------"
  puts "  #{b[4]} | #{b[5]} | #{b[6]} "
  puts "-------------"
  puts "  #{b[7]} | #{b[8]} | #{b[9]} "
end

def initiallize_borad(b)
  (1..9).each{|e| b[e]=" "}
end

def empty_position(b)
  b.select {|k,v| v == " "}.keys
end

def full_position(b)
  b.select{|k,v| v == "X" || v == "O"}.keys
end

def player_pick (b)
  puts "Choose a number to place a square(1-9) :"
  begin
    user_position = gets.chomp.to_i
    player_donot_pick = full_position(b)
    if player_donot_pick.include?(user_position)
      puts "Please choose an empty square: "
    elsif !((1..9).include?(user_position)) 
      puts "Please choose a valid number: "
    else
      b[user_position] = "X"
    end
  end until !player_donot_pick.include?(user_position) && ((1..9).include?(user_position))
end

def computer_pick (b)
  computer_position = empty_position(b).sample
  b[computer_position] = "O"
end


def check_winner(test,b)
  winner_lines = [[1, 2, 3], [1, 5, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [4, 5, 6], [7, 8, 9]]
  winner_lines.each do |line| 
    if b[line[0]] == 'X' and b[line[1]] == 'X' and b[line[2]] == 'X'
      test << 'Player'
    elsif b[line[0]] == 'O' and b[line[1]] == 'O' and b[line[2]] == 'O'
      test << 'Computer'
    else
      test << ' '
    end
  end
end

def check_winner_second(test)
  if test.include?('Player')
    return "Player"
  elsif test.include?('Computer')
    return "Computer"
  else
    return nil
  end
end

b={}
initiallize_borad(b)
test = []

begin
  player_pick(b)
  computer_pick (b)
  draw(b)
  check_winner(test,b)
  winner = check_winner_second(test)
end until winner || empty_position(b).empty?

if winner
  puts "#{winner} won!"
else
  puts "It's a tie!"
end
    