# Write a method, count_vowels(word), that takes in a string word and returns
# the number of vowels in the word. Vowels are the letters a, e, i, o, u.

# ---------- Steps ----------
# 	- 
# 	- 
# 	- 


# ---------- My Attempt ----------
def count_vowels(word)
  count = 0
  i = 0

  while i < word.length
    char = word[i]

    if char == 'a' || char == 'e' || char == 'i' || char == 'o' || char == 'u'
      puts char
      count += 1
    end
    i += 1
  end
  return count
end



# ---------- Their Solution ----------


#  ---------- Tests ----------
puts count_vowels("bootcamp")  # => 3
puts count_vowels("apple")     # => 2
puts count_vowels("pizza")     # => 2
