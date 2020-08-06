# Array-Giving Enumerables
#   Map: Returns a new array
#   Select: Returns a new array. Must evaluate to a boolean

arr = ["a", "b", "c", "d"]
# This will do what line 13 does better
new_arr = arr.map { |ele| ele.upcase + "!" }
print new_arr
puts

# new_arr = []
# arr.each { |ele| new_arr << ele.upcase + "!" }
# print new_arr
# puts


nums = [1, 2, 3, 4, 5, 6]
evens = nums.select { |ele| ele % 2 == 0}
print evens
puts

# evens = []
# nums.each do |num|
#     if num % 2 == 0
#         evens << num
#     end
# end
# print evens
# puts