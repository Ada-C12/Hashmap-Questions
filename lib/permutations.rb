
def permutations?(string1, string2)
  return true if string1.empty? && string2.empty?
  return false if string1.length != string2.length
  
  hash = {}
  
  string_one = string1.split("")
  
  string_one.each do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  
  string_two = string2.split("")
  
  string_two.each do |letter|
    if hash[letter]
      hash[letter] -= 1
    end
    if hash[letter] == 0
      hash.delete(letter)
    end
    
  end
  return hash.empty? ? true : false  
end
