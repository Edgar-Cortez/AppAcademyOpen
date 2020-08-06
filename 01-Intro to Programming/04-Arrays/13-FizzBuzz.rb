# Write a method fizz_buzz(max) that takes in a number max and returns an array
# containing all numbers greater than 0 and less than max that are divisible by
# either 4 or 6, but not both.

# ---------- Steps ----------
# 	- create an empty array
# 	- create a temp variable to hold the current element
# 	- if statement: check if number is greater than 0 and less than max and divisible by 4 and 6 but not both
# 		- use Modulus
# 	- return the new array


# ---------- My Attempt ----------
# I couldn't figure out how to make the check to exclude the elements that were divisible by both 4 and 6
# def fizz_buzz(max)
# 	new_array = []

# 	i = 0
# 	while i < max
		
# 		if (i > 0 && i < max) && (i % 4 == 0 && i % 6 == 0)
# 			new_array << i
# 		end

# 		i += 1
# 	end

# 	return new_array
# end

# ---------- Their Solution ----------

def fizz_buzz(max)
  nums = []

  i = 0
  while (i < max)
    if (i % 4 == 0 || i % 6 == 0) && !(i % 4 == 0 && i % 6 == 0)
      nums << i
    end

    i += 1
  end

  return nums
end


#  ---------- Tests ----------

print fizz_buzz(20) # => [4, 6, 8, 16, 18]
puts
print fizz_buzz(15) # => [4, 6, 8]
#