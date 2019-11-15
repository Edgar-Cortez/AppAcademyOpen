# Write a method pig_latin_word that takes in a word string and translates the
# word into pig latin. 

# ---------- Steps ----------
# 	- Create an empty array
# 	- Create a string that holds all the vowels to check from
# 	- Check letter at index 0
# 		- If vowel, add 'yay' to the end
# 		- else, move all letters before the first vowel to the end of the word and add 'ay'
# 	- After the check shovel the changes into empty array
# 	- Convert to string

# Pig latin translation uses the following rules:
# - for words that start with a vowel, add 'yay' to the end
# - for words that start with a nonvowel, move all letters before the first vowel to the end of the word and add 'ay'

# ---------- My Attempt ----------
def pig_latin_word(word)

end


# ---------- Their Solution ----------


#  ---------- Tests ----------
puts pig_latin_word("apple")   # => "appleyay"
puts pig_latin_word("eat")     # => "eatyay"
puts pig_latin_word("banana")  # => "ananabay"
puts pig_latin_word("trash")   # => "ashtray"
