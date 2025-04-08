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

  def equality?
    # checks if arrays are the same and in the same order
    self.code == self.guess
  end
  
  def unordered_compare?
    # checks if the arrays are the same regardless of the order
    self.code.sort == self.guess.sort
  end
  
  def common_compare
    # find common elements in the 2 arrays
    self.code & self.guess
  end

  
  def play
    get_code
    # compare the guess to the code and return a new 
    # array containing c if their is a correct guess in
    # the wrong position and C if their is a correct
    # guess in the correct position

    feedback = Array.new

    # Checking for digits in correct positions
    puts self.guess == self.code

  end

  
end

