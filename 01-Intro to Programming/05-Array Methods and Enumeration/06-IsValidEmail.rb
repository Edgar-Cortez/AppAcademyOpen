# Write a method is_valid_email that takes in a string and returns a boolean
# indicating whether or not it is a valid email address. 

# ---------- Steps ----------
# 	- use .include?() to check for @
# 	- use .split()
# 	- use .downcase to check for lowercase before @
# 	- use .include?() to check for exactly one instance of '.' after @
# 	- return boolean if passes\fails the check

# ---------- Hint ----------
# For simplicity, we'll consider an email valid when it satisfies all of the following:
# - contains exactly one @ symbol
# - contains only lowercase alphabetic letters before the @
# - contains exactly one . after the @

# ---------- My Attempt ----------
# Here I attempted to split up my task into seperate functions
# I had my main function that dealt with check each parts array element
# I create two other helper functions to do the other task
# 	- check if it's lowercase
# 	- check if their is only one period
# My problem lied in that I was unsure if my helper functions did what I tasked them to do
# The results only came back from lines lines 30 -34. Nothing else affected the results.


# def is_valid_email(str)
# 	find_char = str.include?("@")
# 	parts = str.split("@")
			
# 	if find_char
# 		return true
# 	else
# 		return false
# 	end

# 	parts.each do |part|
#     	if !only_lowercase(part) && !one_period(part)
#       		return false
#     	end
#   	end

#   	return true
# end

# def only_lowercase(word)
# 	if word == word.downcase
# 		return true
# 	else
# 		return false
# 	end
# end

# def one_period(word)
# 	if word.include?(".") < 2
# 		return true
# 	else 
# 		return false
# 	end
# end

# ---------- Their Solution ----------

def is_valid_email(str)
# splits the str input at the @ symbol
	parts = str.split("@")

# This first check makes sure that the array has 2 elements.
# if it fails here then the email is not valid
	if parts.length != 2
		return false
	end

# parts.length output: 
# ["abc", "xy.z"]				length = 2	True
# ["jdoe", "gmail.com"]			length = 2	True
# ["jdoe", "g", "mail.com"]		length = 3	False				
# ["jdoe42", "gmail.com"]		length = 2	True
# ["jdoegmail.com"]				length = 1	False
# ["az", "email"]				length = 2	True	

# Here we save each element of the parts array into their respective variables
	left = parts[0]	# Before @
	right = parts[1]	# After @
# We have a reference variable containing all the lowercase letters
	alpha = "abcdefghijklmnopqrstuvwxyz"

# We check that the first element includes anything other than what is in alpha
# If it does include anything else other than characters in alpha it is an invalid email
	left.each_char do |char|
		if !alpha.include?(char)
	  		return false
		end
	end

# We check if the the second element contains 2 elements after splitting it at "." symbol
# If this array does contain two elements then it means their is only 1 "." symbol present and the email is valid
	if right.split('.').length == 2
		return true
	else
		return false
	end
end

#  ---------- Tests ----------
puts is_valid_email("abc@xy.z")         # => true
puts is_valid_email("jdoe@gmail.com")   # => true
puts is_valid_email("jdoe@g@mail.com")  # => false
puts is_valid_email("jdoe42@gmail.com") # => false
puts is_valid_email("jdoegmail.com")    # => false
puts is_valid_email("az@email")         # => false
