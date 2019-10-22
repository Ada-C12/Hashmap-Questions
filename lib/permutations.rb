def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  
  string1_hash = {}
  
  string1.each_char do |char|
    count = string1_hash[char] || 0
    string1_hash[char] = count + 1
  end
  
  string2.each_char do |char|
    count = string1_hash[char] || 0
    if count > 0 
      string1_hash[char] -= 1
    else
      return false
    end
  end
  
  return true
end