# 

# ---------- Steps ----------
# 	- Create a variable that holds the array given as first element (pyramid array)
# 	- Create a function that will handle adding elements in given sub array
# 	  - Create an empty array to hold addition result
# 	  - Iterate through given sub array using .each_with_index by element and i
# 	  - To make sure you reach the end of the array: check if i is < sub arrays length - 1
# 	  - Shovel result of adding the first and second element of given array to the empty array
# 	  - return filled array
# 	- While the length of the pyramid array is less than the base array length
# 	  - Get the value of the element in position 0 and store it as a variable to hold the initial level
# 	  - Get the value of the next level by calling helper function, passing the initial level variable (previous step)
# 	  - Unshift the next level to the pyramid array
# 	- Return pyramid array


# ---------- My Attempt ----------
# def pyramid_sum(base)
# 	arr = []
#   	sum = 0
#   	base.each_with_index do |ele, i|
#     	temp = []
#       	if i != base.length - 1
#           	first = base[i]
#           	second = base[i + 1]
#           	sum = first + second
#           	# puts sum
#       		arr << sum
      		
#         	# second = base[i] + base[i + 1]
#         	# temp << second
#         end
#     end
  	
#   	return arr
# end


# ---------- Their Solution ----------
def pyramid_sum(base)
    pyramid = [base]
  
    while pyramid.length < base.length
      prev_level = pyramid[0]
      next_level = adjacent_sum(prev_level)
      pyramid.unshift(next_level)
    end
  
    return pyramid
  end
  
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
print pyramid_sum([1, 4, 6]) #=> [[15], [5, 10], [1, 4, 6]]
puts

print pyramid_sum([3, 7, 2, 11]) #=> [[41], [19, 22], [10, 9, 13], [3, 7, 2, 11]]
puts
