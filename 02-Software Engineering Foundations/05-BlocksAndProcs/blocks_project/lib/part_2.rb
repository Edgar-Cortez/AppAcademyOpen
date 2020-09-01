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

    # Given Solution
    # arr.all? { |word| word == word.capitalize }
end

# 2
def no_valid_url?(arr)
    valid_domain = ['.com', '.net', '.io', '.org']

    # arr.none? { |url| valid_domain.include? url }
    
    # Given Solution
    arr.none? do |url| 
       valid_domain.any? { |ending| url.end_with?(ending) }
    end
end

# #3 
def any_passing_students?(arr)
    arr.any? { |hash| average(hash[:grades]) >= 75}
end

def average(arr)
    arr.sum / ( arr.size * 1.0)
end
