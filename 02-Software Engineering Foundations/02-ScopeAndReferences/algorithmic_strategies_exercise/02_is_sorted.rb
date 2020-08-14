# Write a method, is_sorted(arr), that accepts an array of numbers as an arg.
# The method should return true if the elements are in increasing order, false otherwise.
# Do not use the built-in Array#sort in your solution :)

def is_sorted(arr)

    # Go through the array and check two elements at a time
    # If first element is greater than the second, return false
    # This means that it's not in order
    (0...arr.length - 1).each do |i|
        if arr[i] > arr[i + 1]
            return false
        end

        # return false if arr[i] > arr[i + 1]
    end

    # If after iterating through entire array with out flagging false its means it's sorted
    return true
end

p is_sorted([1, 4, 10, 13, 15])       # => true
p is_sorted([1, 4, 10, 10, 13, 15])   # => true
p is_sorted([1, 2, 5, 3, 4 ])         # => false
