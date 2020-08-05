# 

# ---------- Steps ----------
# 	- create variable to hold entire alphabet into a string
# 	- create variable with an empty string 
# 	- traverse given string with .each_char by iterating by character
#       - create a variable to hold the index of the character in the alphabet
#       - create a variable to hold the shift index of character in alphabet + number given
#       - create a variable to hold the new character value we get from shifting in previous step and % by 26
#           - This handles shifting from 'z' back to 'a'
#       - append the new character to empty string
# 	- return string


# ---------- My Attempt ----------
# def caesar_cipher(str, num)
# 	alphabet = "abcdefghijklmnopqrstuvwxyz"
#   	arr = str.split(//)
# 	encrypt = []
  	
#   	arr.each do |letter|
#     	if arr[letter] == alphabet[letter]
#         	shift == alphabet[letter + num]
#           	encrypt << arr[shift]
#         end
#     end
  
#   	return encrypt
  	
# end


# ---------- Their Solution ----------
def caesar_cipher(str, num)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    new_str = ""
  
    str.each_char do |char|
      old_idx = alphabet.index(char)
      new_idx = old_idx + num
      new_char = alphabet[new_idx % 26]
      new_str += new_char
    end
  
    return new_str
  end

#  ---------- Tests ----------

