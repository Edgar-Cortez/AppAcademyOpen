# Write a method triple_sequence that takes in two numbers, 
# start and length. The method should return an array representing 
# a sequence that begins with start and is length elements long. 
# In the sequence, every element should be 3 times the previous element.
# Assume that the length is at least 1.

# ---------- Steps ----------
# 	- initialize an array with start number at 0-index
# 	- while the array lenght is less than length number given
# 	    - shovel last index value * 3
#   - return array


# ---------- My Attempt ----------
# def triple_sequence(start, length)
# 	arr = []
#   	(0...length).each do |i|

#       	return arr << start << start*3
#     end
# end


# ---------- Their Solution ----------
def triple_sequence(start, length)
    seq = [start]

    while seq.length < length
        seq << seq[-1] * 3
    end

    return seq
end
  

#  ---------- Tests ----------
print triple_sequence(2, 4) # => [2, 6, 18, 54]
puts
print triple_sequence(4, 5) # => [4, 12, 36, 108, 324]
puts
