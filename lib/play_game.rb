require_relative 'setup'

class PlayGame 
  include SetUp
  attr_accessor :code, :guess, :feedback

  def initialize
    @code = generate_code
    @guess = generate_code
    @feedback = []
  end

end