# Write a method element_replace that takes in an array and a hash. 
# The method should return a new array where elements of the original array 
# are replaced with their corresponding values in the hash.

# ---------- Steps ----------
# 	- create an empty array
# 	- iterate through given array
# 	- if the array element matches the given hash's key
#       - Shovel the value of the key into the empty array
#   - else shovel the key into the empty array
#   - return the newly filled array


# ---------- My Attempt ----------
# def element_replace(arr, hash)
# 	replace = {}
  
#   	arr.each { |ele| 
#       if hash.has_key?(ele)
#     	replace += hash[ele]
      
#       end
#     }
#   	return replace
# end


# ---------- Their Solution ----------
def element_replace(arr, hash)
    new_arr = []
  
    arr.each do |ele|
      if hash.has_key?(ele)
        new_arr << hash[ele]
      else
        new_arr << ele
      end
    end
  
    return new_arr
  end

#  ---------- Tests ----------

