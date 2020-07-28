# Write a method greatest_factor_array that takes in an array
# of numbers and returns a new array where every even number 
# is replaced with it's greatest factor. 
# A greatest factor is the largest number that divides another 
# with no remainder. For example the greatest factor of 16 is 8. 
# (For the purpose of this problem we won't say the greatest factor 
# of 16 is 16, because that would be too easy, ha)

# ---------- Steps ----------
# 	- create helper method to get prime factors
# 	- in greatest_factor_array: create empty array
#   - iterate through each index and check if it is even
#       - True: call the prime factors method and return second to last in index and shovel into empty array
#       - False: shovel into empty array
#   - return array


# ---------- My Attempt ----------
def greatest_factor_array(arr)
	array = []
  	arr.each do |i|
    	if i.even?
        	array << prime_factors(i)
        else
          	array << i
        end
    end
  	return array
end

def prime_factors(num)
	prime_facts = []
  
    (1..num).each do |i|
      if num % i == 0 
        prime_facts << i
      end
    end
  
    return prime_facts[-2]
end


# ---------- Their Solution ----------
# def greatest_factor_array(arr)
#     new_arr = arr.map do |num|
#         if num % 2 == 0
#         greatest_factor(num)
#         else
#         num
#         end
#     end

#     return new_arr
#     end

#     def greatest_factor(num)
#     (1...num).reverse_each do |i|
#         if num % i == 0
#         return i
#         end
#     end
# end

#  ---------- Tests ----------
print greatest_factor_array([16, 7, 9, 14]) # => [8, 7, 9, 7]
puts
print greatest_factor_array([30, 3, 24, 21, 10]) # => [15, 3, 12, 21, 5]
puts
