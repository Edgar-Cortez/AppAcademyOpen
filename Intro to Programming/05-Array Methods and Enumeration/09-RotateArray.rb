# Write a method rotate_array that takes in an array and a number. The method
# should return the array after rotating the elements the specified number of
# times. A single rotation takes the last element of the array and moves it to
# the front. 

# ---------- Steps ----------
# 	- set increment to default value
# 	- while loop and iterate based on num parameter
# 	- create a temp variable to hold the the removed element from .pop
# 	- create a temp variable to hold and insert the removed element with unshift
# 	- return the edited array


# ---------- My Attempt ----------

def rotate_array(arr, num)
	i = 0
	while i < num
		temp = arr.pop
		# puts temp

		temp2 = arr.unshift (temp)
		# puts temp2

		i += 1
	end
		return arr 

end


# ---------- Their Solution ----------
# used the .times and a do loop to do lines 17 - 26
# def rotate_array(arr, num)
#   num.times do
#     ele = arr.pop
#     arr.unshift(ele)
#   end

#   return arr
# end

#  ---------- Tests ----------
print rotate_array([ "Matt", "Danny", "Mashu", "Matthias" ], 1) # => [ "Matthias", "Matt", "Danny", "Mashu" ]
puts

print rotate_array([ "a", "b", "c", "d" ], 2) # => [ "c", "d", "a", "b" ]
puts
