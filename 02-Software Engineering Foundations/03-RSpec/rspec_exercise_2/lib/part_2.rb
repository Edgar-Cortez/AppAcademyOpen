def palindrome?(str)
  reversed = ""

  i = 0
  while i < str.length
    char = str[i]
    reversed = char + reversed
      
    i += 1
  end

  if reversed != str
    false
  else
    true
  end

  # Given Solution
  # str.each_char.with_index do |char, i|
  #  # it looking at the beginning and end at the same time, if the don't match return false
  #   if string[i] != string[-i - 1]
  #     return false
  #   end
  # end

  # after running throught the whole string and it passes return true, because it's a palindrome
  # true
end

def substrings(str)
  output = []

  (0...str.length).each do |i|
    (i...str.length).each do |j|
      output << str[i..j]
    end
  end

  output

  # Given Solution
  # subs = []

  # (0...str.length).each do |star_idx|
  #   (star_idx...str.length).each do |end_idx|
  #     output << str[star_idx..end_idx]
  #   end
  # end

  # subs
end

def palindrome_substrings(str)
  arr = []
  sub = substrings(str)

  sub.map do |ele|
    if palindrome?(ele) && ele.length > 1
      arr << ele
    end
  end
  
  arr

  # Given Solution
  # substrings(str).select { |substr| palindrome?(substr) && substr.length > 1 }

end
