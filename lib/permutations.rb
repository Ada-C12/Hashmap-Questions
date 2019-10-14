
def permutations?(string1, string2)
  hash = {}
  string1 = string1.split('')
  string2 = string2.split('')
  string1.each do |letter|
    if hash[letter] != nil
      hash[letter] += 1
    else  
      hash[letter] = 1
    end 
  end
  string2.each do |letter|
    if hash[letter] != nil
      hash[letter] -= 1
    else
      hash[letter] = -1
    end
  end
  hash.each do |letter, count|
    if count != 0
      return false
    end
  end
  return true
end
