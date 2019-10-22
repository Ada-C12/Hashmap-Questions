def permutations?(string1, string2)
  hash = Hash.new(0)
  if string1.length != string2.length 
    return false
  end
  string1.split('').each do |letter|
    hash[letter] += 1
  end
  
  
  string2.split('').each do |letter|
    if hash.include?(letter) && hash[letter] > 0 
      hash[letter] -= 1
    else
      return false
    end
  end
  return true
end