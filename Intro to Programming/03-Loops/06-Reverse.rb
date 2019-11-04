# Write a method reverse(word) that takes in a string word and returns the word with its letters in reverse order.

# ---------- Steps ----------
# 	- I need an empty variable to hold the final reversed string
# 	- I need a variable to hold my iterations
# 	- I need to concatinate to the front of the final string
# 	- 


# ---------- My Attempt ----------

def reverse(word)
# This was as far as I could go
	temp = ''

	i += 0
	while i <= word.length
		# I know that this will hold the individual letter of the current iteration
		char = word[i]

		puts i
		i += 1
	end
	return temp	
end



# ---------- Their Solution ----------
# def reverse(word)
#   reversed = ""

#   i = 0
#   while i < word.length
#     char = word[i]
# ***************** Missing Code ***********************
#     reversed = char + reversed
# ***************** Missing Code ***********************

#     i += 1
#   end

#   return reversed
# end

#  ---------- Tests ----------
puts reverse("cat")          # => "tac"
puts reverse("programming")  # => "gnimmargorp"
puts reverse("bootcamp")     # => "pmactoob"