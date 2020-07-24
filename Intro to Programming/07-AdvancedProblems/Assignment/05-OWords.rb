# Write a method o_words that takes in a sentence 
# string and returns an array of the words that contain an "o". Use select in your solution!

# ---------- Steps ----------
# 	- split the string given
# 	- select the array created from the string and check if each word has "o"
# 	- return the new array


# ---------- My Attempt ----------
def o_words(sentence)
	return sentence.split.select { |word| word.include?("o") }
end



# ---------- Their Solution ----------


#  ---------- Tests ----------
print o_words("How did you do that?") #=> ["How", "you", "do"]
puts