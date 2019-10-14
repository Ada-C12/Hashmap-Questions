
def permutations?(string1, string2)
  
  hash_tbl = Hash.new
  
  if string1.length != string2.length
    return false
  end
  
  string1.each_char do |char|
    if hash_tbl[char]
      hash_tbl[char] += 1
    else
      hash_tbl[char] = 1
    end
  end
  
  string2.each_char do |char|
    if hash_tbl[char] && hash_tbl[char] != 0
      hash_tbl[char] -= 1
    else
      return false
    end
  end
  return true
  
end
