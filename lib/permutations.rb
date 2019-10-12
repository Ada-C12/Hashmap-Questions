
def permutations?(string1, string2)
  hash = {}
  
  string1.each_char do |char|
    if hash[char].nil?
      hash[char] = 1
    else 
      hash[char] += 1
    end
  end

  string2.each_char do |char|
    if hash[char].nil?
      return false
    else 
      hash[char] -= 1
    end
  end
  
  values = hash.values
  return values.sum == 0
end
