def partition(arr, num)
  # setup empty arrays for the numbers less than and greater than given num
  lower = []
  greater = []

  # iterate through arr
  arr.each do |ele|
    # check if the current element is less than the given number
    if ele < num
      # shovel into lower [] if true
      lower << ele
    else
      # shovel into greater [] if false
      greater << ele
    end
  end

  # assemble empty 2D array with lower[] and greater[] as elements
  [lower, greater]
end

def merge(hash_1, hash_2)
  # using hash_1, use merge method and prioritize hash_2 value 
  new_hash = hash_1.merge(hash_2) { |key, old_val, new_val|  new_val}
  
  new_hash

  # Given Solution
  # new_hash = {}
  # hash_1.each do { |k, v| new_hash[k] = v}
  # hash_2.each do { |k, v| new_hash[k] = v}
  
  # new_hash
end

def censor(sentence, arr)
  # covert sentence string to an array
  new_sentence = sentence.split(' ')

  # iterate through the array
  new_sentence.map do |word|
    # check if the current word is in the given array
    if arr.include?(word.downcase)
      # True: call the method check_vowels on the word and return result
      check_vowels(word)
    else
      # return the word
      word
    end
  end

  # convert the assembled array into a string
  new_sentence.join(' ')
end

# this is a helper method to handle matched words from given array
def check_vowels(str)
  # will replace any character if it matches the regex with '*'
  new_word = str.gsub!(/[aeiouAEIOU]/, '*')
  return new_word
end

def power_of_two?(num)
  # initializes the value we are checking
  val = 1

  # this will multiply the value by 2 until it's greater than the num given and hold the result
  while val < num
    val *= 2
  end

  # if the values result equals num
  if val == num
    true
  else
    false
  end
end