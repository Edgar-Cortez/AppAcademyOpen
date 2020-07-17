# Hashes
# counter hash
# sort_by

# Updated version of last counter hash
str = "mississippi river"
count = Hash.new(0)

# create a hash and make key for each letter and a value for # of times it is found
str.each_char do |char|
    count[char] += 1
end

print count                                # {"m"=>1, "i"=>5, "s"=>4, "p"=>2, " "=>1, "r"=>2, "v"=>1, "e"=>1}
puts


sorted =  count.sort_by { |k, v| v}     
print "Sorted by value: " , sorted                            #[["e", 1], ["v", 1], [" ", 1], ["m", 1], ["r", 2], ["p", 2], ["s", 4], ["i", 5]]
puts
print "Key/Value pair for last index: " , sorted[-1]                        # ["i", 5]
puts
print "Key of last index: ", sorted[-1] [0]                    # i