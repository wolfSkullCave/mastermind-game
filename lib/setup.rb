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

  def matching_values(arr1, arr2)
    # find common elements in the 2 arrays
    commom_elements = []
    # commom_elements.push(arr1 & arr2)
    arr1.each do |value|
      commom_elements.push(arr2.find { |element| element == value })
    end

    return commom_elements
  end

  def matching_indexes(arr1, arr2)
    # checks if any values of arr1 match any values of arr2
    # and then returns the indexes of the matching values.
    matching_indexes = []
    arr1.each_with_index do |item, index|
      if item == arr2[index]
        matching_indexes.push(index)
      end
    end
    return matching_indexes
  end
end
