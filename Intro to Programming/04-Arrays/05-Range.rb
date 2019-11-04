# Write a method range(min, max) that takes in two numbers min and max. The
# function should return an array containing all numbers from min to max
# inclusive.

# ---------- Steps ----------
# 	- Create an empty array
# 	- Create a variable to set the iteration and set it to the min parameter
# 	- At each loop insert the i value of the element into the empty array using Shovel
# 	- Return the new array


# ---------- My Attempt ----------
def range(min, max)
	new_array = []

	i = min
	while i <= max
		new_array << i
		i += 1
	end
  return new_array
end



# ---------- Their Solution ----------


#  ---------- Tests ----------
print range(2, 7)   # => [2, 3, 4, 5, 6, 7]
puts
print range(13, 20) # => [13, 14, 15, 16, 17, 18, 19, 20]