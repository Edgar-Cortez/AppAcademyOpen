# 

# ---------- Steps ----------
# 	- create an empty array
# 	- iterate through array with .each_with_index by element and i
# 	    - want to account for finishing before the end of the array     if i != array.length - 1 
# 	        - create a variable to hold addition of current arr[i] + arr[i + 1]  
# 	        - shovel result into empty array  
# 	- return array


# ---------- My Attempt ----------
# def adjacent_sum(arr)
	
# 	arr.each_with_index do |ele, i|
#       	# puts arr[i + 1]
# 		sum = arr + arr[i + 1]
# 		arr << sum
#     end
  
# end


# ---------- Their Solution ----------
def adjacent_sum(arr)
    new_arr = []
  
    arr.each_with_index do |ele, i|
      if i != arr.length - 1
        new_arr << arr[i] + arr[i + 1]
      end
    end
  
    return new_arr
end

#  ---------- Tests ----------
print adjacent_sum([3, 7, 2, 11]) #=> [10, 9, 13], because [ 3+7, 7+2, 2+11 ]
puts
print adjacent_sum([2, 5, 1, 9, 2, 4]) #=> [7, 6, 10, 11, 6], because [2+5, 5+1, 1+9, 9+2, 2+4]
puts
