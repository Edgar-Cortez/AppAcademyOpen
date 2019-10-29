# Write a method sum_elements(arr1, arr2) that takes in two arrays. The method
# should return a new array containing the results of adding together
# corresponding elements of the original arrays. You can assume the arrays have
# the same length.

# ---------- Steps ----------
# 	- create an empty array
# 	- create a temp variable to hold the sum of arr1 and arr2
# 	- Shovel the temp value into empty array
# 	- return new array


# ---------- My Attempt ----------

def sum_elements(arr1, arr2)
	sum_array = []

	i = 0
	while i < arr1.length && i < arr2.length
		temp = arr1[i] + arr2[i]
		sum_array << temp

		i += 1
	end

	return sum_array
end

# ---------- Their Solution ----------


#  ---------- Tests ----------

print sum_elements([7, 4, 4], [3, 2, 11])                            # => [10, 6, 15]
puts
print sum_elements(["cat", "pizza", "boot"], ["dog", "pie", "camp"]) # => ["catdog", "pizzapie", "bootcamp"]