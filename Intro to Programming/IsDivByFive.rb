# Write a method is_div_by_5(number) that takes in a number and returns the boolean true if the given number is divisible by 5, false otherwise

# ---------- Steps ----------
# 	• Check if number is divisible by is true/false
# 	• Return boolean value

# ---------- My Attempt ----------
def is_div_by_5(number)
	if  number % 5 == 0
		return true
	else
		return false
	end
end



# ---------- Their Solution ----------
# This is a condensed version of the above.  It works because the expression number % 5 == 0 must evaluate to a boolean and we want to return the boolean anyway

# def is_div_by_5 (number)
#      return number % 5 == 0
# end

#  ---------- Tests ----------

