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
  attr_accessor :c, :C

  def initialize
    super
  end

  def game_loop

  end

  def check_guess?(guess)
   
  end

  
end

