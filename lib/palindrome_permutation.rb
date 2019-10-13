
def palindrome_permutation?(string)
  hash = {}
  
  string.each_char do |char|
    if hash[char].nil?
      hash[char] = 1
    else
      hash[char] += 1
    end
  end
  
  hash.each do |key, value|
    if value % 2 == 0
      hash.delete(key)
    end
  end
  
  return hash.values.length == 1 || hash.values.length == 0
  
end
