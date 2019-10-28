# Write a method reverse_range(min, max) that takes in two numbers min and max.
# The function should return an array containing all numbers from min to max in
# reverse order. The min and max should be excluded from the array

# ---------- Steps ----------
# 	- Create an empty array
# 	- Set the iteration variable to max parameter - 1
# 	- Decrement by one to min parameter and Shovel each element into the empty array
# 	- Return the new array


# ---------- My Attempt ----------
# I was half way. I managed to exclude the the min and max values but I struggled
# with finding out how to reverse. Iteration should decrement and start with max not min.

# def reverse_range(min, max)
# 	new_array = []

# 	i = min + 1
# 	while i < max
		

# 		new_array << i
# 		i += 1
# 	end

# 	return new_array
# end



# ---------- Their Solution ----------

def reverse_range(min, max)
  nums = []

  i = max - 1
  while i > min
    nums << i

    i -= 1
  end

  return nums
end

#  ---------- Tests ----------
print reverse_range(10, 17) # => [16, 15, 14, 13, 12, 11]
puts
print reverse_range(1, 7)   # => [6, 5, 4, 3, 2]