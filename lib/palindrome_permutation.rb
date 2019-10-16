# Time = O(n), depends on length of string
# Space = O(1)?? b/c finite number of characters in existence


def palindrome_permutation?(string)
  #takes a string as an argument and returns true if the letters could be re-arranged into a palindrome  
  inventory_hash = {}
  
  string.split("").each do |char|
    if inventory_hash[char]
      inventory_hash[char] += 1
    else
      inventory_hash[char] = 1
    end
  end
  
  found_an_odd_value = nil
  inventory_hash.values.each do |value|
    if value % 2 == 1
      if found_an_odd_value
        # another odd_value letter already exists, cannot have a second one in a palindrome
        return false
      else
        found_an_odd_value = true
      end
    end
  end
  
  return true
end
