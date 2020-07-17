# Write a method word_lengths that takes in a sentence string and
# returns a hash where every key is a word of the sentence, and its' 
# corresponding value is the length of that word.

# ---------- Steps ----------
# 	- convert to array
# 	- loop through array
# 	    - get length of key store it in the value
# 	- return a hash with keys for each word and values for the length of the word


# ---------- My Attempt ----------
def word_lengths(sentence)
    sentence_array = sentence.split
    sentence_hash = Hash.new(empty)

    sentence_array.each do |word|
        
    end

    print sentence_array.length
end


# ---------- Their Solution ----------
# def word_lengths(sentence)

# end

#  ---------- Tests ----------
puts word_lengths("this is fun") #=> {"this"=>4, "is"=>2, "fun"=>3}
puts word_lengths("When in doubt, leave it out") #=> {"When"=>4, "in"=>2, "doubt,"=>6, "leave"=>5, "it"=>2, "out"=>3}
