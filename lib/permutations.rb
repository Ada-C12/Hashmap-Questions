#space complexity: O(n), where n is the number of elements in string1
#time complexity: O(n), where n is the number of elements in string1 (time required to build the hash)

def permutations?(string1, string2)
  return false if string1.length != string2.length
  string1_hash = {}
  
  #Add each char in string1 to a hash, {char => # of occurrences}
  string1.each_char do |char|
    if string1_hash[char]
      string1_hash[char] += 1 
    else 
      string1_hash[char] = 1
    end 
  end 
  
  #Check whether each char of string2 exists in string1_hash, decrement hash values accordingly.
  string2.each_char do |char|
    if string1_hash[char].nil?
      return false
    elsif string1_hash[char] > 1
      string1_hash[char] -= 1 
    else 
      string1_hash.delete(char)
    end 
  end 
  
  #if string1_hash is empty, the strings are palindromes
  return string1_hash.empty? ? true : false 
end 
