require_relative '../lib/play_game'

test = PlayGame.new
test.guess[0] = test.code[0]

puts "Code: #{test.code}"
puts "Guess: #{test.guess}"

puts "matching values: #{test.matching_values(test.guess, test.code)}"
puts "matching indexes: #{test.matching_indexes(test.guess, test.code)}"
