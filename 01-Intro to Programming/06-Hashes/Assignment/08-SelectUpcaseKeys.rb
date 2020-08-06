# Write a method select_upcase_keys that takes in a hash 
# and returns a new hash containing key-value pairs of the 
# original hash that had uppercase keys. You can assume that the 
# keys will always be strings.

# ---------- Steps ----------
# 	- create a new empty hash
# 	- loop through given array
# 	    - if the key is all uppercase (.upcase)
# 	        - True: add key/value pair into empty hash
# 	- return new hash


# ---------- My Attempt ----------
# def select_upcase_keys(hash)
# 	new_hash = Hash.new("")
#     puts new_hash
  
#   	hash.each { |key, value|
#   		if (key == key.upcase)
        	
#         end  
#     }
# end

# ---------- Their Solution ----------
def select_upcase_keys(hash)
    selected = {}
  
    hash.each do |k, v|
      if k == k.upcase
        selected[k] = v
      end
    end
  
    return selected
end

#  ---------- Tests ----------
print select_upcase_keys({"make"=> "Tesla", "MODEL"=> "S", "Year"=> 2018, "SEATS"=> 4}) # => {"MODEL"=>"S", "SEATS"=>4}
puts

print select_upcase_keys({"DATE"=>"July 4th","holiday"=> "Independence Day", "type"=>"Federal"}) # => {"DATE"=>"July 4th"}
puts
