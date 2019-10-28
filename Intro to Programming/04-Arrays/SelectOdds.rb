# Write a method select_odds(numbers) that takes in an array of numbers and
# returns a new array containing the odd numbers of the original array.


# ---------- Steps ----------
# 	- create an empty array
# 	- check if element in given array is odd
# 		- true: push into empty array using Shovel
# 	- return new array


# ---------- My Attempt ----------
def select_odds(numbers)
	oddNums = []

	i = 0
	while i <= numbers.length
		temp = numbers[i]
		if temp % 2 != 0
			oddNums << temp
		end

		i += 1
	end

	return oddNums
end


# ---------- Their Solution ----------


#  ---------- Tests ----------

print select_odds([13, 4, 3, 7, 6, 11]) # => [13, 3, 7, 11]
puts
print select_odds([2, 4, 6])            # => []