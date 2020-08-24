def hipsterfy(word)
  vowels = "aeiou"
  word.reverse.sub(/[aeiou]/,'').reverse 
end