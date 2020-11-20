# General Problems

# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing the elements that were not repeated in the array.
def no_dupes?(arr)
  ele_count = arr.each_with_object(Hash.new(0)) do |ele, new_hash|
    new_hash[ele] += 1
  end

  ele_count.select{ |k, v| v == 1}.keys
end

# Examples
p no_dupes?([1, 1, 2, 1, 3, 2, 4])         # => [3, 4]
p no_dupes?(['x', 'x', 'y', 'z', 'z'])     # => ['y']
p no_dupes?([true, true, true])            # => []


def no_consecutive_repeats?(arr)
  
end

def char_indices(str)

end

def longest_streak(str)
  
end

def bi_prime?(num)

end

def vigenere_cipher(message, keys)
  
end

def vowel_rotate(str)
  
end