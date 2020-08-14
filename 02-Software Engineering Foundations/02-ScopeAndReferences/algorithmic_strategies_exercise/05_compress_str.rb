# Write a method, compress_str(str), that accepts a string as an arg.
# The method should return a new str where streaks of consecutive characters are compressed.
# For example "aaabbc" is compressed to "3a2bc".

# My Solution does not satisfy last test

# def compress_str(str)
#     # create empty string
#     new_str = ""
#     # create empty hash
#     chars = Hash.new(0)

#     # iterate the string and populate leters as keys and increment count as value
#     str.each_char { |char| chars[char] += 1 }

#     # Flip key/value and convert to array
#     new_str = chars.invert.flatten
#     # if array has element value of 1
#     while new_str.include?(1)
#         # delete at the index where 1 is found
#         new_str.delete_at(new_str.index(1))
#     end
   
#     # convert array to string
#     return new_str.join
# end

def compress_str(str)
    compressed = ""

    i = 0
    while i < str.length
        char = str[i]

        count = 0
        while char == str[i]
            count += 1
            i += 1
        end

        if count > 1
            compressed += (count.to_s + char)
        else
            compressed += char
        end

    end

    return compressed
end

p compress_str("aaabbc")        # => "3a2bc"
p compress_str("xxyyyyzz")      # => "2x4y2z"
p compress_str("qqqqq")         # => "5q"
p compress_str("mississippi")   # => "mi2si2si2pi"
