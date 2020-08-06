# Write a method combinations that takes in an array of unique elements, the
# method should return a 2D array representing all possible combinations of 2
# elements of the array.

# ---------- Steps ----------
# 	- Create an empty array
# 	- Iterate through the array lookin at two elements at a time
# 		- You will need to nest loops to do this 
# 	- If the second element is greater than the first element
# 		- insert the values into another temporary array and shovel those pairs into the first empty array
# 	- Doing so will eliminate the pairs that are redundant. We want unique pairs.
# 	- Make sure to return a 2-Dimensional Array


# ---------- My Attempt ----------
# Figured it out with the help of the Nested Loop Lecture II
# def combinations(arr)
# 	temp = []

# 	arr.each_with_index do |ele1, i1|
# 		arr.each_with_index do |ele2, i2|
# 			if i2 > i1
#               	temp2 = []
#               	temp2 << ele1
#               	temp2 << ele2
              
#               	temp << temp2
# 			end
# 		end
# 	end
# 	print temp
# end



# ---------- Their Solution ----------
def combinations(arr)
  pairs = []

  arr.each_with_index do |ele1, idx1|
    arr.each_with_index do |ele2, idx2|
      # Always makes sure that idx2 is looking at something new 
      if idx2 > idx1
      	# This accomplishes what line 21 - 26 does
        pairs << [ ele1, ele2 ]
      end
    end
  end

  return pairs
end

#  ---------- Tests ----------
print combinations(["a", "b", "c"]); # => [ [ "a", "b" ], [ "a", "c" ], [ "b", "c" ] ]
puts

print combinations([0, 1, 2, 3]); # => [ [ 0, 1 ], [ 0, 2 ], [ 0, 3 ], [ 1, 2 ], [ 1, 3 ], [ 2, 3 ] ]
puts
