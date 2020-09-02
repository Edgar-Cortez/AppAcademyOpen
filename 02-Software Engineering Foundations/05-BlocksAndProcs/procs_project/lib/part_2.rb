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
