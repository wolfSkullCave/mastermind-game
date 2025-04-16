require_relative "setup"
require "colorize"

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
  attr_accessor :guess, :feedback
  attr_reader :code

  def initialize
    @code = generate_code
    @guess = generate_code
    @feedback = []
  end

  private

  def generate_feedback
    @feedback = []
    @guess.each_with_index do |guess_value, guess_index|
      if guess_value == code[guess_index]
        @feedback.push("black-peg")
      elsif @code.find { |code_value| code_value == guess_value }
        @feedback.push("white-peg")
      end
    end

    @feedback.shuffle
  end

  def input_guess
    print "Guess: "
    @guess = gets.chomp.chars.map(&:to_i)
    input_guess while verify_input? == false
    @guess
  end

  def verify_input?
    if @guess.uniq != @guess
      puts "No duplicate numbers"
      return false
    end
    if @guess.length != 4
      puts "Guess must be exactly 4 digits"
      return false
    end
    true
  end

  public

  def play_logic
    (1..9).each do |i|
      puts "Round: #{i}/9".colorize(:cyan)
      input_guess
      puts generate_feedback.join(', ').colorize(:yellow)
      puts ''
      if equality?(@code, @guess)
        puts "Winner! code: #{@code.join}".colorize(:green)
        break
      end
    end

    return if equality?(@code, @guess)

    puts "Game over...".colorize(:red)
    puts "code: #{@code.join}".colorize(:blue)
  end   
end
