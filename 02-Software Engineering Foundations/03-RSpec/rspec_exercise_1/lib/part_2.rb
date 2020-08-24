def hipsterfy(word)
  word.reverse.sub(/[aeiou]/,'').reverse 
end

def vowel_counts(str)
  str_hash = Hash.new(0)
  array = str.downcase.split('')
  vowels = "aeiouAEIOU"

  array.each do |ele|
    if vowels.include?(ele)
      str_hash[ele] += 1
    end
  end

  str_hash
end
