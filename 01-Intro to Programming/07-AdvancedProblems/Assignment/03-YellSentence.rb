# Write a method yell_sentence that takes in a sentence string 
# and returns a new sentence where every word is yelled. See the examples. Use map to solve this.

# ---------- Steps ----------
# 	- create empty string
# 	- split string into an array
# 	- map array and add each word with "!" appended to it to the empty string
#   - return string



# ---------- My Attempt ----------
def yell_sentence(sent)
    sentence = ""
    words = sent.split(" ")
    words.map { |word| sentence += word.upcase + "! "}
    
    return sentence
end


# ---------- Their Solution ----------
def yell_sentence(sent)
  words = sent.split(" ")
  new_words = words.map { |word| word.upcase + "!" }
  return new_words.join(" ")
end

#  ---------- Tests ----------
puts yell_sentence("I have a bad feeling about this") #=> "I! HAVE! A! BAD! FEELING! ABOUT! THIS!"