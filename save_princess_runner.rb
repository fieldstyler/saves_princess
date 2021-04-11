require './lib/save_princess'

puts ""
puts "Welcome to SAVE THE PRINCESS!"
sleep(2)
puts ""
puts "It's your job as an unnamed plumber to save the damsel in distress"
sleep(2.5)
puts "This game will print you the exact directions to find the damsel"
sleep(2.5)
puts ""
puts "Let's set up the game board. Enter an odd number between 2 and 100"
n = gets.chomp.to_i
puts ""
sleep(1.5)
puts "Now, you must type in your game board."
sleep(1)
puts "Your board will be a #{n}x#{n} board"
sleep(1.5)
puts "You will create #{n} rows, each with #{n} 'spaces,' denoted by a '-'."
sleep(1.5)
puts ""
puts "You can hide one 'p' (for the princess) in any of the four corners of your board"
puts "And you must put 'm' (for the unnamed plumber) in the middle row and column"
sleep(5)
puts ""
puts "An example of a 3x3 board with 'p' in the top right corner would look like this:"
puts "--p -m- ---"
puts "where each new row is separated by a space"
puts ""
sleep(3)
puts "An example of a 5x5 board with 'p' in the bottom left corner would look like this:"
puts "----- ----- --m-- ----- p----"
puts ""
sleep(3)
puts "Enter your #{n}x#{n} game board now"
grid = gets.chomp.strip.split(" ").join("\n")
sleep(1.5)
puts ""
if error?(n, grid)
  puts display_path_to_princess(n, grid)
  puts ""
  sleep(1.5)
  puts "YOU LOSE"
  puts "Try again and follow directions if you want to save the princess..."
else
  puts "Your directions to find the princess are......"
  puts ""
  sleep(1.5)
  puts display_path_to_princess(n, grid)
  puts ""
  sleep(1.5)
  puts "Woohoo!!!!!! You win! Wasn't that wonderful???"
end
puts ""
puts ""
puts ""
puts ""
