def palindrome_permutation?(string)
  return true if string.length == 0 || string == string.reverse
  
  hash = {}
  
  string.each_char do |char|
    if hash.key?(char)
      hash[char] += 1
    else 
      hash[char] = 1
    end
  end
  
  odd = 0
  
  hash.each_value do |val|
    if val%2 != 0
      odd +=1
    end
    
    return false if odd > 1
  end
  
  return true
end