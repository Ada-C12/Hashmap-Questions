# Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.
#permutations?("hello", "ehllo") => true
#permutations?("Pizza", "Pasta") => false
#permutations?("", "") => true

def permutations?(string1, string2)
  hash_check = {}
  string1.chars.each do |letter|
    hash_check[letter] = true
  end 
  
  result = []
  string2.chars.each do |i|
    if hash_check[i] == true
      result << 1 
    end
  end 
  
  if result.length == string1.length
    return true
  else
    return false
  end 
end 
