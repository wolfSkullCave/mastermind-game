# The SetUp module provides utility methods for setting up and managing the
# logic of the Mastermind game. It includes methods for generating a random
# code, comparing arrays for equality, finding common elements, and identifying
# matching values or indexes between two arrays.
#
# Methods:
# - generate_code: Generates a random 4-digit code with unique numbers between 1 and 8.
# - equality?(arr1, arr2): Checks if two arrays are identical in both content and order.
# - unordered_compare?(arr1, arr2): Checks if two arrays contain the same elements, regardless of order.
# - matching_values(arr1, arr2): Finds and returns the common elements between two arrays.
# - matching_indexes(arr1, arr2): Compares two arrays and returns an array indicating
#   whether values match at the same index ('vc') or exist elsewhere in the second array ('c').
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
    arr1.map do |value|
      commom_elements.push(arr2.find { |element| element == value })
    end

    commom_elements
  end

  def matching_indexes(arr1, arr2)
    # checks if any values of arr1 match any values of arr2
    # and then returns the indexes of the matching values.
    matching_indexes = []
    arr1.each_with_index do |item, index|
      if item == arr2[index]
        matching_indexes.push('vc')
      elsif arr2.find { |v| v == item }
        matching_indexes.push('c')
      end
    end

    matching_indexes
  end
end
