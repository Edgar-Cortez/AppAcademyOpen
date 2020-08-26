def partition(arr, num)
  lower = []
  greater = []

  arr.each do |ele|
      if ele < num
          lower << ele
      else
          greater << ele
      end
  end

  [lower, greater]
end

def merge(hash_1, hash_2)
  new_hash = hash_1.merge(hash_2) { |key, val_1, val_2|  val_2}
  
  new_hash
end

def censor(sentence, arr)
  # new_sentence = sentence.split(' ')

  # same_words = new_sentence & arr

  # same_words.each do |word|
  #   check_vowels(word)
  # end

  # # iterate through sentence
  # new_sentence.each do | word |
  #   # check if the word is in the array
  #   # if word == arr[word]
  #   if arr.include?(new_sentence[word])
  #     check_vowels(word)
  #   else
  #     word
  #   end

  #   # true: use check_vowels method on word
  #   # false: return word
  # end

  # new_sentence.join(' ')
end

def check_vowels(word)
  new_word = word.gsub(/[aeiouAEIOU]/, '*')
  new_word
end

def power_of_two?(num)
  val = 1

  while val < num
    val *= 2
  end

  if val == num
    true
  else
    false
  end
end