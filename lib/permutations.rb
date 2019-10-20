def permutations?(string1, string2)
  return true if string1 == string2
  
  hash = {}
  
  string1.each_char do |char|
    if hash.key?(char)
      hash[char] += 1
    else 
      hash[char] = 1
    end
  end
  
  string2.each_char do |char|
    if hash.has_key?(char) && hash[char] > 0
      hash[char] -= 1
    else
      return false
    end
  end
  
  hash.each_value do |val|
    if val != 0
      return false
    end
  end
  
  return true
end