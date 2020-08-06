# Write a method two_d_translate that takes in a 2 dimensional array and
# translates it into a 1 dimensional array. You can assume that the inner
# arrays always have 2 elements. See the examples.

# ---------- Steps ----------
# 	- Create an empty array
# 	- Iterate through the array
# 		- Need to find a way to save the string element into variable 
# 		- Need to find a way to save the number element into variable 
# 	- Shovel the string element by the number element into empty array 
# 	- Return the filled array


# ---------- My Attempt ----------
# def two_d_translate(arr)
# 	new_arr = []

# 	# 1st Level: Looking at each element (these are also arrays)
# 	arr.each do |sub_arr|		
		
# 		ele = sub_arr[0]
#         num = sub_arr[1]
#       	result = ele * num
      	
#       	new_arr << [result]
		
# 	end

# 	return new_str
# end




# ---------- Their Solution ----------
def two_d_translate(arr)
  # Create an empty array
  new_arr = []

  # 1st Level: Looking at each element (these are also arrays)
  arr.each do |subArray|
    ele = subArray[0]	# always the string of the array
    num = subArray[1]	# alway the number of the array

    # Shovels the ele into the empty array by the num
    num.times { new_arr << ele }
  end

  return new_arr
end


#  ---------- Tests ----------

arr_1 = [
  ['boot', 3],
  ['camp', 2],
  ['program', 0]
]

print two_d_translate(arr_1) # => [ 'boot', 'boot', 'boot', 'camp', 'camp' ]
puts

arr_2 = [
  ['red', 1],
  ['blue', 4]
]

print two_d_translate(arr_2) # => [ 'red', 'blue', 'blue', 'blue', 'blue' ]
puts