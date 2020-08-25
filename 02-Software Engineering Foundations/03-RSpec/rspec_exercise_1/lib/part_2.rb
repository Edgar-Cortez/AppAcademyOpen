def hipsterfy(word)
  word.reverse.sub(/[aeiou]/,'').reverse 


  # Given Solution
  # vowels = "aeiou"

  # i = word.length -1
  # while i >= 0
  #   if vowels.include?(word[i])
  #     return word[0...i] + word[i+1..-1]
  #   end

  #   i -= 1
  # end

  # word
end

def vowel_counts(str)
  str_hash = Hash.new(0)
  array = str.downcase.split('')
  vowels = "aeiouAEIOU"

  array.each do |ele|
    if vowels.include?(ele)
      str_hash[ele] += 1
    end
  end

  str_hash

  # Given Solution
  # counts = Hash.new(0)
  # vowels = "aeiou"

  # str.each_char do |char|
  #   if vowels.include?(char.downcase)
  #     count[char.downcase] += 1
  #   end
  # end

  # counts
end

def caesar_cipher(str, num)
  # alphabet = 'abcdefghijklmnopqrstuvwxyz'
  # new_str = ""

  # str.each_char do |char|
  #     old_idx = alphabet.index(char)
  #     new_idx = old_idx + num
  #     new_char = alphabet[new_idx % 26]
  #     new_str += new_char

  #     new_str += char
  # end

  # return new_str

  # Given Solution
  alphabet = ("a".."z").to_a
  new_str = ""

  str.each_char do |char|
    if alphabet.include?(char)
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_str += alphabet[new_idx % 26]
    else
      new_str += char
    end
    
  end

  new_str
end
