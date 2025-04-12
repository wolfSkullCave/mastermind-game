require_relative 'setup'

class PlayGame
  include SetUp
  attr_accessor :code, :guess, :feedback

  def initialize
    @code = generate_code
    @guess = generate_code
    @feedback = []
  end

  def get_feedback
    matching_indexes(guess, code).each { feedback.push("vc") }
    matching_values(guess, code).each { feedback.push("c") }
    feedback.shuffle
  end

end
