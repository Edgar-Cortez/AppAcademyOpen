require "byebug"

# 1
def all_words_capitalized?(arr)
    arr.all? do |word|
        if word == word.capitalize
            true
        else
            false
        end
    end
end

