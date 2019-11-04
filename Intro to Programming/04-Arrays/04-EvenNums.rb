# Write a method even_nums(max) that takes in a number max and returns an array
# containing all even numbers from 0 to max


# ---------- Steps ----------
# 	- create an empty array
# 	- create a temp variable to modify the element
# 	- use modulus to calculate if the number is even
# 	- if it is even then insert to the empty array.


# ---------- My Attempt ----------
# Attempted to push the odd i's into another empty array and display both arrays
def even_nums(max)
	even_array = []
  	# odd_array = []

	i = 0
	while i <= max
		if i % 2 == 0
      		even_array << i
        # else
        #   	odd_array << i
        end

		i += 1
	end

	return even_array
  	# return odd_array
end


# ---------- Their Solution ----------


#  ---------- Tests ----------
print even_nums(10) # => [0, 2, 4, 6, 8, 10]
puts
print even_nums(5)  # => [0, 2, 4]