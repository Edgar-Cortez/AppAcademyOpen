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
    # vowels = "aeiou"
    # # arr = str.split('')
    # translated = str.each_char do |char|
    #     if vowels.include?(char) 
    #         new_str =  char + "b" + char
            
    #     end
    # end
    
    # translated

    vowels ="aeiou"
    new_word = ""

    str.each_char do |char|
        if vowels.include?(char)
            new_word += char + "b" + char
        else
            new_word += char
        end
        
    end

    new_word
end

def aba_array(arr)
    new_arr = arr.map do |ele|
        aba_translate(ele)
    end

    new_arr
end


