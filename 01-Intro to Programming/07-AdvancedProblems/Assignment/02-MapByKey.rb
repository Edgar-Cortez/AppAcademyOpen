# Write a method map_by_key that takes in an array of hashes and a key string. 
# The method should returns a new array containing the values from each hash for the given key.

# ---------- Steps ----------
# 	- map the array given
# 	- iterate the elements and in this case they are hashes
# 	- we want to use the key that's passed in for specifiying what value we want from each hash


# ---------- My Attempt ----------
def map_by_key(arr, key)
    return arr.map { |hash| hash[key] }
end


# ---------- Their Solution ----------


#  ---------- Tests ----------
locations = [
    {"city"=>"New York City", "state"=>"New York", "coast"=>"East"},
    {"city"=>"San Francisco", "state"=>"California", "coast"=>"West"},
    {"city"=>"Portland", "state"=>"Oregon", "coast"=>"West"},
]

print map_by_key(locations, "state") #=> ["New York", "California", "Oregon"]
puts
print map_by_key(locations, "city") #=> ["New York City", "San Francisco", "Portland"]
puts