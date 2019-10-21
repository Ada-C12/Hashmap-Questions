
def palindrome_permutation?(string)
  hash = {}
  #Assign all unique letters to a key in hash
  #Assign their occurrences in the string to their value
  string.each_char do |char|
    if !hash.has_key? char 
      hash[char] = 1 
    else 
      hash[char] += 1
    end 
  end 
  
  #Loop through each value in the key
  #If even; we want to make sure that each key contains an even number of occurrences
  #If odd; we want to check that there is only one key/value pair that has an odd number of occurrences 
  odd_letter = 0
  hash.each_value do |value|
    if value % 2 != 0 
      odd_letter += 1
    end 
  end 
  return odd_letter <= 1 
end 
