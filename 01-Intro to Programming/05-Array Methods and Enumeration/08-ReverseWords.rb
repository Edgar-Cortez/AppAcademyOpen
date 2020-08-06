# Write a method reverse_words that takes in a sentence string and returns the
# sentence with the order of the characters in each word reversed. Note that we
# need to reverse the order of characters in the words, do not reverse the order
# of words in the sentence.

# ---------- Steps ----------
# 	- Create empty array
# 	- Grab string and convert to an array of elements by word
# 	- While loop through array or Do Loop
# 		- at each iteration reverse the string
# 		- push to the empty array
# 	- Convert new array back to string


# ---------- My Attempt ----------
def reverse_words(sent)
	rev_array = []
  	convert = sent.split(" ")
  	print convert
  
  	convert.each do |word|
  		reversed = word.reverse
  		rev_array << reversed
	end
    
  	puts
	print rev_array
  	puts
  	
	return rev_array.join(" ")
end

# ---------- Their Solution ----------
# def reverse_words(sent)
# 	# split the string into an array by words
#   	words = sent.split(" ")
#   	# create an empty array
#   	new_words = []
#   	# does what line 21 - 24 in one line.
#   	# I didn't know I can shovel elements that are being modified by a method
#   	words.each { |word| new_words << word.reverse }
#   	# joins the elements and add a space in between as a complete string
#   	new_sent = new_words.join(" ")
#   	return new_sent
# end

#  ---------- Tests ----------
puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
