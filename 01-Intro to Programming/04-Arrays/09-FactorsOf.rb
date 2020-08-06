# Write a method factors_of(num) that takes in a num and returns an array of all
# positive numbers less than or equal to num that can divide num.

# ---------- Steps ----------
# 	- Create an empty array
# 	- Create if statement to check element is positive and divides the parameter evenly 
# 	- Push the elements that pass into empty array with Shovel
#   - Return the array


# ---------- My Attempt ----------
# Struggled with this until I noticed that the i variable needs to be divided
# into the num. 
# EXAMPLE: num / i

def factors_of(num)
	new_array = []

	i = 1
	while i <= num
		if num % i == 0
			new_array << i
		end 

		i += 1
	end

	return new_array
end


# ---------- Their Solution ----------



#  ---------- Tests ----------

print factors_of(3)   # => [1, 3]
puts
print factors_of(4)   # => [1, 2, 4]
puts
print factors_of(8)   # => [1, 2, 4, 8]
puts
print factors_of(9)   # => [1, 3, 9]
puts
print factors_of(16)  # => [1, 2, 4, 8, 16]