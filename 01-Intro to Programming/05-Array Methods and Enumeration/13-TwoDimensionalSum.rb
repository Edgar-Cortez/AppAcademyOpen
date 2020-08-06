# Write a method two_d_Sum that takes in a two dimensional array and returns
# the sum of all elements in the array.

# ---------- Steps ----------
# 	- Initialize the variable that holds the total
# 	- Iterate through elements of this array (these elements are arrays
# 	- Iterate through elements from above
# 	- Add the elements and update the initialized variable
# 	- return the variable


# ---------- My Attempt ----------
# Couldn't figure this one out


# ---------- Their Solution ----------
def two_d_sum(arr)
	total = 0

	# 1st Level: Looking at each element (these are also arrays)
	arr.each do |sub_arr|
		# 2nd Level: Looking at each elements of these arrays
		sub_arr.each do |ele|
			# add each element to the total
			total += ele
		end
	end

	return total
end

#  ---------- Tests ----------

array_1 = [
  [4, 5],
  [1, 3, 7, 1]
]
puts two_d_sum(array_1)    # => 21

array_2 = [
  [3, 3],
  [2],
  [2, 5]
]
puts two_d_sum(array_2)    # => 15