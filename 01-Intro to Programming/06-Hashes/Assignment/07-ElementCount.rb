# Write a method element_count that takes in an array 
# and returns a hash representing the count of each element in the array.

# ---------- Steps ----------
# 	- create empty hash
# 	- iterate through array
# 	    - populate hash with each unique element
#       - increment the keys each time it is found


# ---------- My Attempt ----------
# def element_count(arr)
#     hash = {}
#     puts hash

#     arr.each do |ele|
#         if [arr[ele] == arr[ele - 1]]
#             ele << hash
#         end
#     end
#     puts hash
# end


# ---------- Their Solution ----------
def element_count(arr)
    count = Hash.new(0)
    arr.each { |ele| count[ele] += 1 }
    return count
end
  

#  ---------- Tests ----------
puts element_count(["a", "b", "a", "a", "b"]) #=> {"a"=>3, "b"=>2}
puts element_count(["red", "red", "blue", "green"]) #=> {"red"=>2, "blue"=>1, "green"=>1}
