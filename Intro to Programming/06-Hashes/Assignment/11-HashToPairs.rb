# Write a method hash_to_pairs that takes in a hash and returns a 2D array representing each key-value pair of the hash.

# ---------- Steps ----------
# 	- create empty array
# 	- loop through hash and shovel keys and values into another temp array
# 	- shovel temp array into intitial empty array
# 	- return array


# ---------- My Attempt ----------
def hash_to_pairs(hash)
    array = []

    hash.each do |key, value|
      	sub = []
        sub << key
      	sub << value
		array << sub
    end
    return array
end


# ---------- Their Solution ----------
# def hash_to_pairs(hash)
#     pairs = []
#     hash.each { |key, val| pairs << [key, val] }
#     return pairs
# end

#  ---------- Tests ----------
print hash_to_pairs({"name"=>"skateboard", "wheels"=>4, "weight"=>"7.5 lbs"}) #=> [["name", "skateboard"], ["wheels", 4], ["weight", "7.5 lbs"]]
puts
print hash_to_pairs({"kingdom"=>"animalia", "genus"=>"canis", "breed"=>"German Shepherd"}) #=> [["kingdom", "animalia"], ["genus", "canis"], ["breed", "German Shepherd"]]
puts
