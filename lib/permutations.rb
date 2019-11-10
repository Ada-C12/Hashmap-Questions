
def permutations?(string1, string2)
  
  # create a hashmap that tallies letter counts for string1
  hash = {}
  string1.chars.each do |character|
    if hash.include? character
      hash[character] += 1
    else
      hash[character] = 1
    end
  end
  
  # compare the hash to string2 
  string2.chars.each do |character|
    # if the string2 character is present in string1 hash, decrement the string1 count for that character
    if hash[character] == nil
      return false
    elsif hash[character] >= 1
      hash[character] -= 1
    end
  end
  
# delete all the keys where value is 0
  hash.delete_if {|key, value| value == 0 } 

  # now look at the hash. If it's empty, the letter counts in both strings match and it's a permutation. Otherwise, it's not. 
  if hash.empty?
    return true
  else
    return false
  end
  
end
