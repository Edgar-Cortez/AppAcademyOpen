# Write a method format_name that takes in a name string and returns the name
# properly capitalized.

# ---------- Steps ----------
# 	- convert string to lowercase using string.downcase
# 	- split the string 
# 	- convert index 0 of each element to uppercase
# 	- array.join new strings
# 	- return string

# ---------- Hint ----------
# A name is valid is if satisfies all of the following:
# - contains at least a first name and last name, separated by spaces
# - each part of the name should be capitalized
#
# Hint: use str.upcase or str.downcase
# "a".upcase # => "A"

# ---------- My Attempt ----------
def is_valid_name(str)

  # converts to lowercase and puts into an array
	lowercase = str.downcase.split(" ")
	
  	convert = ""
	# empty array 
	new_name = []

	# iterate over the array
	lowercase.each do |name|
		# a temporary variable that holds the element that was converted
		# the conversion uppercases the first char at index 0
		# and appends it to the rest of the element
		converted_name = name[0].upcase + name[1..-1]
		
		# shovel the temp variable to empty array 
		new_name << converted_name
      	# use array.join to convert the array elements to a string
      	convert = new_name.join(" ")      	 
	end	
	
  	print "Input: " + str + " | " + "Converted: " + convert
  	puts
  
  	if str == convert && str.include?(" ") && convert.include?(" ")
      return true
    else
      return false
    end  	 
end



# ---------- Their Solution ----------
# This solution checks if something is wrong at every step
# Only if everything is correct will it return true
# Structuring the code this way will help make sure the returns proper results


# This makes sure that the given input is at least two elements
# long (for validation)
# def is_valid_name(str)
#   parts = str.split(" ")
#   if parts.length < 2
#     return false
#   end


# Iterates through every part of the given input
# Calls the is_capitalized and takes the result of the helper function 
#   parts.each do |part|
#     if !is_capitalized(part)
#       return false
#     end
#   end

#   return true
# end

# This helper function takes an input.
# Checks that the first character is uppercase and the rest is lower case 
# def is_capitalized(word)

# word[0] the chr at first index
# word[1..-1] the chr's in the rest index

#   if word[0] == word[0].upcase && word[1..-1] == word[1..-1].downcase
#     return true
#   else
#     return false
#   end
# end


#  ---------- Tests ----------
puts is_valid_name("Kush Patel")       # => true
puts is_valid_name("Daniel")           # => false
puts is_valid_name("Robert Downey Jr") # => true
puts is_valid_name("ROBERT DOWNEY JR") # => false