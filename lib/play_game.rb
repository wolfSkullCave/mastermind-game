require_relative 'setup'

# This file defines the `PlayGame` class, which is responsible for managing
# the core logic of the Mastermind game. The class includes the `SetUp` module
# to utilize its methods and provides functionality for generating a secret code,
# handling player guesses, and providing feedback on the guesses.
#
# Key Features:
# - Generates a random secret code at initialization.
# - Accepts player guesses and compares them to the secret code.
# - Provides feedback indicating correct guesses ('vc' for value and position match)
#   and partial matches ('c' for value match only).
#
# Dependencies:
# - Requires the `setup` file, which is expected to define the `SetUp` module.
class PlayGame
  include SetUp
  attr_accessor :code, :guess, :feedback

  def initialize
    @code = generate_code
    @guess = generate_code
    @feedback = []
  end

  def generate_feedback
    @guess.each_with_index do |guess_value, guess_index|
      if guess_value == code[guess_index]
        @feedback.push('vc')
      elsif @code.find { |code_value| code_value == guess_value }
        @feedback.push('c')
      end
    end

    @feedback
  end

  def input_code
    print 'Guess: '
    @code = gets.chomp
    while @code.length != 4
      puts 'Code must be 4 digits long.'
      input_code
    end

    @code
  end
end
