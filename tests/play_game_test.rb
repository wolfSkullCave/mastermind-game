require_relative '../lib/play_game'

mastermind = PlayGame.new
# mastermind.guess[0] = mastermind.code[0]

puts "Code: #{mastermind.code}"
puts "Guess: #{mastermind.guess}"

puts "matching values: #{mastermind.matching_values(mastermind.guess, mastermind.code)}"

puts "code: #{mastermind.feedback}"
