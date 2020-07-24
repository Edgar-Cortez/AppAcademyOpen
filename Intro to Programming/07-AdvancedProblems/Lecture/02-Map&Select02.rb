# Array-Giving Enumerables

arr = ["apple", "bootCAMP", "caRrot", "DaNce"]

# Take og array and create a new array with all elements Capitalized
new_arr = arr.map { |word| word[0].upcase + word[1..-1].downcase }
print new_arr
puts

# using a method to also manipulate the array with index
new_arr2 = arr.map.with_index do |ele, i|
    first_char = ele[0].upcase
    rest = ele[1..-1].downcase
    new_word = first_char + rest
    new_word * i
end
print new_arr2
puts

