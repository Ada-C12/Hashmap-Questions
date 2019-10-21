
def permutations?(string1, string2)
  hash = {}
  string1.each_char do |char|
    if !hash.has_key? char 
      hash[char] = 1 
    else 
      hash[char] += 1
    end 
  end 

  hash2 = {}
  string2.each_char do |char|
    if !hash2.has_key? char
      hash2[char] = 1
    else
      hash2[char] += 1
    end
  end 
  return hash == hash2
end