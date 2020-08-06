# Write a method retrieve_values that takes in two hashes and a key. 
# The method should return an array containing the values from the
# two hashes that correspond with the given key.

# ---------- Steps ----------
# 	- create empty array
# 	- loop through both arrays 
# 	- if you find the same keys in both add it to the array


# ---------- My Attempt ----------
def retrieve_values(hash1, hash2, key)
    array = []

    if hash1.has_key?(key) && hash2.has_key?(key)
        array << hash1[key] << hash2[key]
    end

    return array
end

# I did more than what was asked. They simple saved the keys into a variable and constructed the array.
# I made an if check to see if they would be the same in case the hashes didn't have the same keys

# ---------- Their Solution ----------
# def retrieve_values(hash1, hash2, key)
#     val1 = hash1[key]
#     val2 = hash2[key]
#     return [val1, val2]
# end

#  ---------- Tests ----------
dog1 = {"name"=>"Fido", "color"=>"brown"}
dog2 = {"name"=>"Spot", "color"=> "white"}
print retrieve_values(dog1, dog2, "name") #=> ["Fido", "Spot"]
puts
print retrieve_values(dog1, dog2, "color") #=> ["brown", "white"]
puts
