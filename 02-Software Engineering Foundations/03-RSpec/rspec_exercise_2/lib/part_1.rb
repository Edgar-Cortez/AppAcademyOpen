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
  new_sentence = sentence.split(' ')

  new_sentence.map do |word|
    if arr.include?(word.downcase)
      check_vowels(word)
    else
      word
    end
  end

  new_sentence.join(' ')
end

def check_vowels(str)
  new_word = str.gsub!(/[aeiouAEIOU]/, '*')
  return new_word
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