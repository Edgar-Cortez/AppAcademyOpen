require "byebug"

# 1
def reverser(str, &prc)
    new_str = prc.call(str.reverse)

    new_str
end

# 2
def word_changer(str, &prc)
    words = str.split(' ')
    
    new_str = words.map do |word|
        prc.call(word)
    end

    new_str.join(' ')
end

# 3
def greater_proc_value(num, prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)

    if result_1 > result_2
        result_1
    else
        result_2
    end
end

# 4
def and_selector(arr, prc_1, prc_2)
    new_arr = []

    arr.select do |ele|
        if prc_1.call(ele) == true && prc_2.call(ele) == true
            new_arr << ele
        end
    end
end

# 5
def alternating_mapper(arr, prc_1, prc_2)
    new_arr = arr.map.with_index do |ele, i|    
        if i % 2 == 0
            prc_1.call(ele)
        else
            prc_2.call(ele)
        end
    end
    
    new_arr
end