# Write a method count_e(word) that takes in a string word and returns the number of e's in the word


# ---------- Steps ----------
# 	- 
# 	- 
# 	- 


# ---------- My Attempt ----------
# This solves the problem with a built in function in ruby but the objective
# was to use a loop
def count_e(word)
  puts word.count('e') 
end


# ---------- Their Solution ----------
def count_e(word)
  # use count to track the number of e's
  count = 0	

  # use I to iterate through the word
  i = 0	
  while i < word.length
    char = word[i]

    if char == "e"
      count += 1
    end

    i += 1
  end

  return count
end


#  ---------- Tests ----------
puts count_e("movie") # => 1
puts count_e("excellent") # => 3
