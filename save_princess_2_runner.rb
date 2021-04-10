require './lib/save_princess_2'

puts ""
puts "Welcome to Save The Princess Two!"
sleep(2)
puts ""
puts "It's your job as an unnamed plumber to save the damsel in distress"
sleep(2.5)
puts "This particular game will give you the NEXT STEP needed to find the damsel"
sleep(2.5)
puts ""
puts "Let's set up the game board. Enter a number between 2 and 100"
n = gets.chomp.to_i
puts ""
puts "Now enter the row and column where the plumber currently resides."
sleep(1)
puts "The row and column numbers must both be between 0 and #{n - 1}"
sleep(1)
puts ""
puts "Please enter the two numbers you choose separated by a space."
puts "For example, '#{n - 1} #{n - 3}' or '#{n - 2} #{n - 1}'"
r,c = gets.strip.split.map {|n| n.to_i}
puts ""
puts "Lastly, let's create the board. Your game board will be a #{n}x#{n}."
puts ""
sleep(3)
puts "You will create #{n} rows, each with #{n} 'spaces,' denoted by a '-'."
sleep(3)
puts "You can hide one 'p' for the princess anywhere in your game board"
sleep(4)
puts "And you must put 'm' in row #{r} and column #{c}."
sleep(4)
puts ""
puts "An example of a 3x3 game board, with 'm' in row 2 column 0, would look like this:"
puts "---"
puts "--p"
puts "m--"
puts ""
puts "But, you need to type it in one line, like this:"
puts "'--- --p m--' with a space in between each row"
sleep(3)
puts ""
puts "And a 4x4, with 'm' in row 0 column 1, could look like this:"
puts "'-m-- ---- --p- ----'"
sleep(3)
puts ""
puts "Enter your #{n}x#{n} game board now with 'm' in row #{r} and column #{c}."
grid = gets.chomp.strip.split(" ").join("\n")
sleep(1.5)
puts ""
if next_move(n, r, c, grid) == "UP" || next_move(n, r, c, grid) == "DOWN" || next_move(n, r, c, grid) == "LEFT" || next_move(n, r, c, grid) == "RIGHT"
  puts "The next move in finding the princess would be...."
  puts ""
  sleep(1.5)
  puts next_move(n, r, c, grid)
  puts ""
  sleep(1.5)
  puts "Woohoo!!!!!! You win! Wasn't that amazing???"
else
  puts next_move(n, r, c, grid)
  puts ""
  sleep(1.5)
  puts "YOU LOSE"
  puts "Try again and follow directions if you want to save the princess..."
end
puts ""
puts ""
puts ""
puts ""
