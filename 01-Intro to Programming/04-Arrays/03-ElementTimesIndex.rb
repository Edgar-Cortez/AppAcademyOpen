# Write a method element_times_index(nums) that takes in an array of numbers and
# returns a new array containing every number of the original array multiplied
# with its index.


# ---------- Steps ----------
# 	- create an empty array
# 	- create temp variable to hold alteration of current element
# 	- push the altered element into the empty array
# 	- 


# ---------- My Attempt ----------

def element_times_index(numbers)
	number_multiplied = []
	i = 0

	while i < numbers.length
		number = numbers[i] * i
		number_multiplied << number

		i += 
	end

	return number_multiplied	
end


# ---------- Their Solution ----------
# Line 37 is better than what I did in line 20-21

# def element_times_index(numbers)
#   new_nums = []

#   i = 0
#   while i < numbers.length
#     new_nums << numbers[i] * i

#     i += 1
#   end

#   return new_nums
# end

#  ---------- Tests ----------
print element_times_index([4, 7, 6, 5])       # => [0, 7, 12, 15]
puts
print element_times_index([1, 1, 1, 1, 1, 1]) # => [0, 1, 2, 3, 4, 5]