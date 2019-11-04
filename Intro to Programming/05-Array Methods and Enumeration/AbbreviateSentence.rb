# Write a method abbreviate_sentence that takes in a sentence string and returns
# a new sentence where every word longer than 4 characters has all of it's
# vowels removed. 

# ---------- Steps ----------
# 	- create empty string 
# 	- use the split method 
# 	- check each element lenght
# 		- if longer than 4 characters remove vowels
# 	- insert into empty sentenc
# 	- return sentece


# ---------- My Attempt ----------
def abbreviate_sentence(sent)	
	words = sent.split(" ")
	# print words
	new_words =[]

# Each function should handle one task.
# This is the reason for seperating the task in two 


	words.each do |word|
      	if word.length > 4
      		# do some code
      		# calls a helper function everytime the word is longer than 4
      		new_word = abbreviate_word(word)
      		new_wors << new_word
		else
			# do some code
			new_words << new_word
      	end
  	end  
   	
   	new_sent = new_words.join(" ")
end

# I need another function to handle removing vowels
def abbreviate_word(word)
	vowels = "aeiou"
	no_vowels = ""

	word.each_char do |char|
		if !vowels.include?(char)
			# do some code
			no_vowels += char
		end	
	end	

	return no_vowels
end


# # ---------- Their Solution ----------
# def abbreviate_sentence(sent)
#   words = sent.split(" ")
#   new_words = []

#   words.each do |word|
#     if word.length > 4
#       new_word = abbreviate_word(word)
#       new_words << new_word
#     else
#       new_words << word
#     end
#   end

#   return new_words.join(" ")
# end

# def abbreviate_word(word)
#   vowels = "aeiou"
#   new_word = ""

#   word.each_char do |char|
#     if !vowels.include?(char)
#       new_word += char
#     end
#   end

#   return new_word
# end


#  ---------- Tests ----------
puts abbreviate_sentence("follow the yellow brick road") # => "fllw the yllw brck road"
puts abbreviate_sentence("what a wonderful life")        # => "what a wndrfl life"
