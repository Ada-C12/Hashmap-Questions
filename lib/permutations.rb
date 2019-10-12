
def permutations?(string1, string2)
  # take two strings as arguments and returns true if one string is a permutation of the other
  
  hash = {}
  string1.split("").each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  
  puts hash
  string2.split("").each do |char|
    if ! hash[char]
      return false
    elsif hash[char] == 1
      hash[char] = nil
    elsif hash[char] > 1
      hash[char] -= 1
    end
  end
  
  hash.values.each do |value|
    return false if value
  end
  
  return true
end

