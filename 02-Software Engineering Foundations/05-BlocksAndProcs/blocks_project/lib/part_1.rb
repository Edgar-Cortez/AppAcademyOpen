require "byebug"

# 1
def select_even_nums(arr)
    # even = arr.select do |ele|
    #     ele.even?
    # end
    even = arr.select(&:even?)

    even
end

# 2
def reject_puppies(arr)
    older_pups = arr.reject {|k| k["age"] <= 2}

    older_pups
end

# 3
def count_positive_subarrays(array)
    # added = array.map do |ele|
    #     ele.sum
    # end
 
    # counted = added.count { |ele| ele >= 1}
    # # debugger
    # return counted

    # Given Solution
    array.count { |subarr| subarr.sum > 0 }
end

# 4
def aba_translate(str)
    vowels = "aeiou"
    # arr = str.split('')
    translated = str.each_char do |char|
        if vowels.include?(char) 
            str.split(char)
        # else
        #     char
        end
    end
    
    translated
end



