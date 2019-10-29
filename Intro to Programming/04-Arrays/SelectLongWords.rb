# Write a method select_long_words(words) that takes in an array of words and
# returns a new array containing all of the words of the original array that are
# longer than 4 characters.

# ---------- Steps ----------
# 	- create an empty array
# 	- create a temporary variable to hold the current viewed element
# 	- create an if statement to check if the temp variable is longer than 4 characters
# 		- true: insert element into the empty array 
# 	- return the new array


# ---------- My Attempt ----------

def select_long_words(words)
	longWords = []

	i = 0
	while i <= words.length
		temp = words[i]

		if temp.length > 4
			longWords << temp
		end

		i += 1
	end

	return longWords
end

# ---------- Their Solution ----------


#  ---------- Tests ----------

print select_long_words(["what", "are", "we", "eating", "for", "dinner"]) # => ["eating", "dinner"]
puts
print select_long_words(["keep", "coding"])                               # => ["coding"]