# Hashes
# default value nil
# Hash.new(default)
# counter hash strategy

# my_hash = {
#     "a" => 28
# }
# puts my_hash["a"]
# puts my_hash["b"]

# if key not found it will display as 0
# my_hash = Hash.new(0)
# if key not found it will display as hello
# my_hash = Hash.new("hello")

counter = Hash.new(0)

# Count how many of each letters there are in the string
str = "bootcamp prep"
str.each_char do |char|
    puts char
    counter[char] += 1
    puts counter
end