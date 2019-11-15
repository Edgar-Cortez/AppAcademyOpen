# Write a method opposite_count that takes in an array of unique numbers. The
# method should return the number of pairs of elements that sum to 0.

# ---------- Steps ----------
# 	- Create a counter and set it to 0
# 	- Check two elements at a time and compare the values
# 		- if the match, then add to the counter 
# 		- *****BONUS***** Print the matching pairs 
# 	- return counter


# ---------- My Attempt ----------
# I wanted to display the pairs that evaluated to 0.
# I could have used .to_s instead of inserting them to an array
def opposite_count(nums)
	counter = 0
	temp = []
  
	nums.each_with_index do |ele1, idx1|
		nums.each_with_index do |ele2, idx2|
			# Making sure that the second index is alway looking at something new. Prevents duplicate
			if idx2 > idx1
              	if ele1 + ele2 == 0                  	
                  	temp <<  [ele1 , ele2]                  	
                  	puts
                  
					counter += 1
				end              	
            end
		end
	end
	print temp
	return counter
end


# ---------- Their Solution ----------
# def opposite_count(nums)
#   count = 0

#   nums.each_with_index do |num1, idx1|
#     nums.each_with_index do |num2, idx2|
#     	# This does what line 19 - 26 does. Just combined the if statements
#       	if num1 + num2 == 0 && idx2 > idx1
#         	count += 1
#       	end
#     end
#   end

#   return count
# end

#  ---------- Tests ----------
puts opposite_count([ 2, 5, 11, -5, -2, 7 ]) # => 2
puts opposite_count([ 21, -23, 24 -12, 23 ]) # => 1
