#Tic tac toe

#step1: print out a OOXX frame, break it into 9 spaces
#step2: ask user to choose a position
#step3: computer randomly choose a position diiferent from the user's position
#step4: if someone make a line, declare winner;if not declare it's a tie!

b={}

def initiallize_borad
  (1..9).each{|e| b[e]=" "}


require 'pry'
a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
user_piece = []
computer_piece= []


loop do
  puts "Choose a position (from 1 to 9) to place a piece:"
  user_position = gets.chomp.to_i     #retrieve user's position

  #if user picked a number that had been picked before, he/she has to pick another number; if he/she doesn't pick 1-9 number, pick again as well.
  begin
    if !([1,2,3,4,5,6,7,8,9].include?(user_position))
      puts "Please pick a valid number(1-9):"
      user_position = gets.chomp.to_i
    elsif !(a.include?(user_position))
      puts "The number had been picked! Please pick another number:"
      user_position = gets.chomp.to_i     
    end
  end until a.include?(user_position)

  a.delete(user_position)             #delete user's position to prevent from overlapping
 

  
  user_piece << user_position         #save user's position into an array
  puts "You picked #{user_position}!"

  
  computer_position = a.sample        #retrieve computer's position (randomly choose)
  a.delete(computer_position)         #delete computer's position to prevent from overlapping
  computer_piece << computer_position #save computer's position into an array
  puts "Computer picked #{computer_position}!"

  if user_piece.include?(1) && user_piece.include?(2) && user_piece.include?(3) 
    puts "You won!"
    break
  elsif user_piece.include?(1) && user_piece.include?(5) && user_piece.include?(9) 
    puts "You won!"
    break
  elsif user_piece.include?(1) && user_piece.include?(4) && user_piece.include?(7) 
    puts "You won!"
    break
  elsif user_piece.include?(2) && user_piece.include?(5) && user_piece.include?(8) 
    puts "You won!"
    break
  elsif user_piece.include?(3) && user_piece.include?(6) && user_piece.include?(9) 
  puts "You won!"
    break
  elsif user_piece.include?(3) && user_piece.include?(5) && user_piece.include?(7) 
  puts "You won!"
    break
  elsif user_piece.include?(4) && user_piece.include?(5) && user_piece.include?(6) 
  puts "You won!"
    break
  elsif user_piece.include?(7) && user_piece.include?(8) && user_piece.include?(9) 
  puts "You won!"
    break
  elsif computer_piece.include?(1) && computer_piece.include?(2) && computer_piece.include?(3) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(1) && computer_piece.include?(5) && computer_piece.include?(9) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(2) && computer_piece.include?(5) && computer_piece.include?(8) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(3) && computer_piece.include?(6) && computer_piece.include?(9) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(3) && computer_piece.include?(5) && computer_piece.include?(7) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(4) && computer_piece.include?(5) && computer_piece.include?(6) 
    puts "Computer won!"
    break
  elsif computer_piece.include?(7) && computer_piece.include?(8) && computer_piece.include?(9) 
    puts "Computer won!"
    break
  elsif computer_piece.count + user_piece.count == 9
    puts "It's a tie!"
    break
  end

end



  

