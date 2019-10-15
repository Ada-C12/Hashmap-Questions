
def palindrome_permutation?(string)
  hash = {}
  array = string.split("")
  array.each do |char|
    if hash[char] != nil
      hash[char] += 1
    else  
      hash[char] = 1
    end 
  end 

  odd_counts = 0 
  hash.each do |char, count| 
    if count % 2 != 0 
      odd_counts += 1 
    end 
  end 

  if odd_counts > 1 
    return false 
  else 
    return true 
  end 
end
