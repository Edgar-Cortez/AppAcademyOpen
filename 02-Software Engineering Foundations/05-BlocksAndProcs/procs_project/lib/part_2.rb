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