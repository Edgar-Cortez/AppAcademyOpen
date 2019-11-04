# Write a method first_in_array that takes in an array and two elements, the
# method should return the element that appears earlier in the array. 

# ---------- Steps ----------
# 	- Need to use index method
# 	- Check to see if el1 and el2 are in the array
# 		- Compare the index of both to see which on is smaller
# 	- Return the lowest parameter


# ---------- My Attempt ----------
puts ["a", "b", "c", "d"].index("c")	# Prints 2


def first_in_array(arr, el1, el2)
	temp = arr.index(el2)
  	return temp.to_s + el2
  	
end


# ---------- Their Solution ----------
# def first_in_array(arr, el1, el2)
# 	if arr.index(el1) < arr.index(el2)
#       return el1
#     else
#       return el2
#     end
# end

#  ---------- Tests ----------
puts first_in_array(["a", "b", "c", "d"], "d", "b"); # => "b"
puts first_in_array(["cat", "bird" ,"dog", "mouse" ], "dog", "mouse"); # => "dog"
