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


