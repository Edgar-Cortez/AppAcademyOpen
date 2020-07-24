# Write a method unique_elements that takes in an array and
# returns a new array where all duplicate elements are removed. Solve this using a hash.

# Hint: all keys of a hash are automatically unique

# ---------- Steps ----------
# 	- create an empy hash with inital value of 0
# 	- 
# 	- 


# ---------- My Attempt ----------
# def unique_elements(arr)
#     elements = Hash.new(0)

#     return elements
# end


# ---------- Their Solution ----------
def unique_elements(arr)
    hash_elements = {}
    arr.each { |ele| hash_elements[ele] = true }
    return hash_elements.keys
end

#  ---------- Tests ----------
print unique_elements(['a', 'b', 'a', 'a', 'b', 'c']) #=> ["a", "b", "c"]
puts
