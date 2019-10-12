
def palindrome_permutation?(string)
  #takes a string as an argument and returns true if the letters could be re-arranged into a palindrome  
  hash = {}
  
  string.split("").each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  
  found_an_odd_value = nil
  hash.values.each do |value|
    if value % 2 == 1
      if found_an_odd_value
        return false
      else
        found_an_odd_value = true
      end
    end
  end
  
  return true
end
