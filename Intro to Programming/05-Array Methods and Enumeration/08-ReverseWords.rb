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


#  ---------- Tests ----------
puts reverse_words('keep coding') # => 'peek gnidoc'
puts reverse_words('simplicity is prerequisite for reliability') # => 'yticilpmis si etisiuqererp rof ytilibailer'
