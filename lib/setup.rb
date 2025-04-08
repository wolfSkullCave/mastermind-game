module SetUp
  def generate_code
    prng = Random.new
    code = []
    while code.size < 4
      random_number = prng.rand(1..8)
      code << random_number unless code.include?(random_number)
    end
    code
  end

  def equality?(arr1, arr2)
    # checks if arrays are the same and in the same order
    arr1 == arr2
  end

  def unordered_compare?(arr1, arr2)
    # checks if the arrays are the same regardless of the order
    arr1.sort == arr2.sort
  end

  def common_compare(arr1, arr2)
    # find common elements in the 2 arrays
    arr1 & arr2
  end
end