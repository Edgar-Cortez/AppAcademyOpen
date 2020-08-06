# Write a method map_by_name  that takes in an array of hashes and 
# returns a new array containing the names of each hash.

# ---------- Steps ----------
# 	- map the array given
# 	- iterate through each element, in this case a hash
# 	- I want to focus on the "name" key in each hash


# ---------- My Attempt ----------
# def map_by_name(arr)
#     new_arr = arr.map { |ele| ele[1] }
# end


# ---------- Their Solution ----------
def map_by_name(arr)
    return arr.map { |hash| hash["name"] }
end

#  ---------- Tests ----------
pets = [
    {"type"=>"dog", "name"=>"Rolo"},
    {"type"=>"cat", "name"=>"Sunny"},
    {"type"=>"rat", "name"=>"Saki"},
    {"type"=>"dog", "name"=>"Finn"},
    {"type"=>"cat", "name"=>"Buffy"}
  ]
  print map_by_name(pets) #=> ["Rolo", "Sunny", "Saki", "Finn", "Buffy"]
  puts
  
  countries = [
   {"name"=>"Japan", "continent"=>"Asia"},
   {"name"=>"Hungary", "continent"=>"Europe"},
   {"name"=>"Kenya", "continent"=>"Africa"},
  ]
  print map_by_name(countries) #=> ["Japan", "Hungary", "Kenya"]
  puts
