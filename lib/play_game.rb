require_relative 'setup'

class PlayGame
  include SetUp
  attr_accessor :code, :guess, :feedback

  def initialize
    @code = generate_code
    @guess = generate_code
    @feedback = []
  end

  def x
    
  end

  def y
    matching_values = []

    # itterate through both arrays simultaneously
    self.code.each_with_index do |value, index|
      if value == self.guess[index]
        matching_values << index
        matching_values << value
        return 'y'
      end
    end
    return matching_values
  end
end
 