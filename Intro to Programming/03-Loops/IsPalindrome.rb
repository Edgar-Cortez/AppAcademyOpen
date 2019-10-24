# Write a method is_palindrome(word) that takes in a string word and returns the true if the word is a palindrome, false otherwise. A palindrome is a word that is spelled the same forwards and backwards.

# ---------- Steps ----------
# 	- I need an empty variable to hold the final reversed string
# 	- I need a variable to hold my iterations
# 	- I need to concatinate to the front of the final string
# 	- I need to check if the original string and the new string are equal


# ---------- My Attempt ----------

def is_palindrome(word)
  reversed = ""

  i = 0
  while i < word.length
    char = word[i]
    reversed = char + reversed

    i += 1
  end

  if word == reversed
    return true
  else	
	return false
  end
end
	


# ---------- Their Solution ----------
# The return is much cleaner. It does the Conditional in one line.
# def is_palindrome(word)
#   reversed = ""

#   i = 0
#   while i < word.length
#     char = word[i]
#     reversed = char + reversed

#     i += 1
#   end

#   return reversed == word
# end

#  ---------- Tests ----------
puts is_palindrome("racecar")  # => true
puts is_palindrome("kayak")    # => true
puts is_palindrome("bootcamp") # => false