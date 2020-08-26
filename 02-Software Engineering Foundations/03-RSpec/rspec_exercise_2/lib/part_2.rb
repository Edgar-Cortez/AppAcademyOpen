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
end

def substrings(str)
  output = []

  (0...str.length).each do |i|
    (i...str.length).each do |j|
      output << str[i..j]
    end
  end

  output
end


