# Write a method format_name that takes in a name string and returns the name
# properly capitalized.

# ---------- Steps ----------
# 	- convert string to lowercase using string.downcase
# 	- split the string 
# 	- convert index 0 of each element to uppercase
# 		- slice the index 0 to the rest of the element
# 	- array.join new strings
# 	- return string


# ---------- My Attempt ----------
def format_name(str)
	# converts to lowercase and puts into an array
	lowercase = str.downcase.split(" ")

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
	end
	
	# use array.join to convert the array elements to a string
  	return new_name.join(" ")

end


# ---------- Their Solution ----------

# def format_name(str)
#   parts = str.split(" ")
#   new_parts = []

#   parts.each do |part|
#     new_parts << part[0].upcase + part[1..-1].downcase
#   end

#   return new_parts.join(" ")
# end

#  ---------- Tests ----------
puts format_name("chase WILSON") # => "Chase Wilson"
puts format_name("brian CrAwFoRd scoTT") # => "Brian Crawford Scott"
