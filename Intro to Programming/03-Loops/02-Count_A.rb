# Write a method count_e(word) that takes in a string word and returns the
# number of e's in the word

# ---------- Steps ----------
# 	- 
# 	- 
# 	- 


# ---------- My Attempt ----------
def count_a(word)
  count = 0 # use count to track the number of e's

  i = 0 # use I to iterate through the word
  
  while i < word.length
    char = word[i]
    if char == 'a' || char == 'A'
      puts char # prints the letter that matches
      count += 1
    end
    i += 1
  end
  return count
end



# ---------- Their Solution ----------


#  ---------- Tests ----------
puts count_a("application")  # => 2
puts count_a("bike")         # => 0
puts count_a("Arthur")       # => 1
puts count_a("Aardvark")     # => 3
