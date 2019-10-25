# Write a method yell(words) that takes in an array of words and returns a
# new array where every word from the original array has an exclamation point after it.

# ---------- Steps ----------
# 	- create an empty array
# 	- setup two temp variables to store the new strings
# 	- construct the new string
# 	- insert the new string into the empty array


# ---------- My Attempt ----------

def yell(words)
	words_bang = []

	i = 0
	while i <  words.length
		words_temp = words[i]
		words_new = words_temp + '!'

		words_bang << words_new

		i += 1
	end
	
	return words_bang
end


# ---------- Their Solution ----------
# Line 37 is better because it combines lines 18-19 together

# def yell(words)
#   yelled_words = []

#   i = 0
#   while i < words.length
#     new_word = words[i] + '!'
#     yelled_words << new_word

#     i += 1
#   end

#   return yelled_words
# end

#  ---------- Tests ----------
print yell(["hello", "world"]) # => ["hello!", "world!"]
puts
print yell(["code", "is", "cool"]) # => ["code!", "is!", "cool!"]