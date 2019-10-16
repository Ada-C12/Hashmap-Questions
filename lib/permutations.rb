# Time: O(n), where n = length of the longer string
# Space: O(1) ??? b/c finite number of characters in existence

def permutations?(string1, string2)
  # take two strings as arguments and returns true if one string is a permutation of the other
  
  inventory_hash = {}
  string1.split("").each do |char|
    if inventory_hash[char]
      inventory_hash[char] += 1
    else
      inventory_hash[char] = 1
    end
  end
  
  string2.split("").each do |char|
    if ! inventory_hash[char]
      return false
    elsif inventory_hash[char] == 1
      inventory_hash[char] = nil
    elsif inventory_hash[char] > 1
      inventory_hash[char] -= 1
    end
  end
  
  inventory_hash.values.each do |value|
    return false if value
  end
  
  return true
end

