require_relative "lib/play_game"

mastermind = PlayGame.new

puts "Welcome to Mastermind!"
puts "The rules are simple:"
puts "1. The computer will generate a secret code consisting of 4 digits from 1-8."
puts "2. You need to guess the correct sequence of digits within a limited number of attempts."
puts "3. After each guess, you'll receive feedback:"
puts "   - A black peg means you have a correct color in the correct position."
puts "   - A white peg means you have a correct color but in the wrong position."
puts "4. Use the feedback to refine your guesses and crack the code!"
puts "Good luck!"
puts "----------------------------------------------------"
mastermind.play_logic
