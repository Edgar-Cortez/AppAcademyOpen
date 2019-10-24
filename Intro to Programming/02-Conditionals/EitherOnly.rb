# Write a method either_only(number) that takes in a number and returns true if the number is divisible by either 3 or 5, but not both. The method should return false otherwise.

# ---------- Steps ----------
# 	- Check to see if number is divisible by 3 or 5 but not both
# 	- Return true if it matches or false



# ---------- My Attempt (WRONG) ----------
# def either_only(number)
# 	if number % 3 == 0 || number % 5 == 0
# 		return true
# 	else
# 		return false
# 	end
# end


# ---------- Their Solution ----------
# There are two clauses for this solution. I got the first half correct but needed to figure out how to check that both don't return true, since, we want to solve for either only not both.

# if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
# This reads as:
# If the number is divisible by 3 or 5 and not by both 3 and 5


def either_only(number)
	if (number % 3 == 0 || number % 5 == 0) && !(number % 3 == 0 && number % 5 == 0)
		return true
	else
		return false
	end
end


#  ---------- Tests ----------
puts either_only(9)  # => true
puts either_only(20) # => true
puts either_only(7)  # => false
puts either_only(15) # => false
puts either_only(30) # => false
