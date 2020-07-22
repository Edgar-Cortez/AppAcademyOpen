# Write a method hand_score that takes in a string representing
# a hand of cards and returns it's total score. You can assume 
# the letters in the string are only A, K, Q, J. 
# A is worth 4 points, K is 3 points, Q is 2 points, and J is 1 point. 
# The letters of the input string not necessarily uppercase.

# ---------- Steps ----------
# 	- create score variable
# 	- define values of each letter in a hash
# 	- loop through string
# 	- convert all letters to lowercase and check the values
#   - if the values match
#       - add to the score


# ---------- My Attempt ----------
# def hand_score(hand)
#     score = 0
#     hash ={
#         "a"=>4,
#         "k"=>3,
#         "q"=>2,
#         "j"=>1
#     }

#     hand.each_char { |c|
#         if c == hash[c]
#             score += hash[c]
#         end
#     }

#     return score
# end



# ---------- Their Solution ----------
def hand_score(hand)
    points = {
      "A"=>4,
      "K"=>3,
      "Q"=>2,
      "J"=>1
    }
  
    score = 0
    hand.each_char { |char| score += points[char.upcase] }
    return score
end

#  ---------- Tests ----------
puts hand_score("AQAJ") #=> 11
puts hand_score("jJka") #=> 9
