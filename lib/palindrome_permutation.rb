
def palindrome_permutation?(string)
  
  # palindrome rules: 
  #  - if count of all letters is even, count of each letter must also be even
  #  - if count of all letters is odd, count of all but one letter must be even.
  
  
  # account for an empty string
  if string == "" 
    return true
  end
  
  # make a hash map
  hash = {}
  string.chars.each do |character|
    if hash[character] == nil
      hash[character] = 1
    else
      hash[character] += 1
    end
  end
  
  # apply logic for palindrome rules
  if hash.keys.count % 2 == 0
    hash.values.each do |value|
      if value % 2 == 0
        return true
      else
        return false
      end
    end 
    # elsif
    #   if hash.keys.count % 2 == 1
    #   end
  else
    return false
  end
  
end