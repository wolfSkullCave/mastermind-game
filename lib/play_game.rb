class SetUpGame 
  attr_accessor :prng, :code

  def initialize
    @prng = Random.new

    @code = []
    while @code.size < 4
      random_number = @prng.rand(1..8)
      @code << random_number unless @code.include?(random_number)
    end
  end
end


class PlayGame < SetUpGame
  attr_accessor :c, :C, :guess

  def initialize
    super
  end

  def get_code
    print "Guess the code: "
    self.guess = gets.chomp.to_s.chars.map(&:to_i)
  end


  def equality?(code, guess)
    # checks if arrays are the same and in the same order
    code == guess
  end
  
  def unordered_compare?(code, guess)
    # checks if the arrays are the same regardless of the order
    code.sort == guess.sort
  end
  
  def common_compare(code, guess)
    # find common elements in the 2 arrays
    code & guess
  end

  
end

