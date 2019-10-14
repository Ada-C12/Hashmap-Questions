
# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

# permutations?("hello", "ehllo") => true
# permutations?("pasta", "atsap") => true
# permutations?("Pizza", "Pasta") => false
# permutations?("", "") => true

def permutations?(string1, string2)
  if string1 == "" && string2 == ""
    return true
  elsif string1.length != string2.length
    return false
  end
  
  letters_hash = {}
  index = 0
  length = string1.length
  
  length.times do |i|
    if letters_hash[string1[i]].nil?
      letters_hash[string1[i]] = 1
      i += 1
    else
      letters_hash[string1[i]] += 1
      i += 1
    end
  end
  
  i = 0
  
  length.times do |i|
    if letters_hash[string2[i]].nil?
      return false
    elsif letters_hash[string2[i]] != 0
      letters_hash[string2[i]] -= 1
      i += 1
    else
      return false
    end
  end
  
  return true
end
