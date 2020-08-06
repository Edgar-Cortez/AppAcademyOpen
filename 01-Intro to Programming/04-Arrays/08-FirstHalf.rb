# Write a method first_half(array) that takes in an array and returns a new
# array containing the first half of the elements in the array. If there is an
# odd number of elements, return the first half including the middle element.


# ---------- Steps ----------
# 	- Create an empty array
# 	- Find a way to divide the length of the array by half
# 	- insert the elements into the empty array using Shovel
# 	- return the new array


# ---------- My Attempt ----------
# I was on the right path but I couldn't figure out how to divide the length of the array.
# Tried to do the division inside the while loop. I didn't know you could divide on line 20.
# def first_half(array)
# 	new_array = []
	
# 	i = 0
# 	while i <= array.length
# 		temp =  array[i]
# 		new_array << temp
		
# 		i += 1
# 	end

# 	return new_array
# end

# ---------- Their Solution ----------

def first_half(array)
  new_array = []

  i = 0
  while i < (array.length / 2.0)
    ele = array[i]
    new_array << ele

    i += 1
  end

  return new_array
end

#  ---------- Tests ----------
print first_half(["Brian", "Abby", "David", "Ommi"]) # => ["Brian", "Abby"]
puts
print first_half(["a", "b", "c", "d", "e"])          # => ["a", "b", "c"]