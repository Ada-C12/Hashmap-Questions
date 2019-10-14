def permutations?(string1, string2)
  hash = {}
  string1.each_char do |character|
    unless hash.has_key?(character)
      hash[character] = 1
    else 
      hash[character] += 1
    end
  end
  p hash
  
  string2.each_char do |letter|
    if hash.has_key?(letter) && hash[letter] > 0
      hash[letter] -= 1
      p hash
    else
      return false
    end
  end
  return hash.values.all?(0)
end
