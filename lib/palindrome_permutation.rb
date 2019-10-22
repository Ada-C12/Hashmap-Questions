# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
#palindrome_permutation?("hello") => false
#palindrome_permutation?("carrace") => true # because racecar is a palindrome

def palindrome_permutation?(string)
  hash_check = {}
  
  if hash_check.nil?
    return true
  end 
  
  string.chars.each do |letter|
    if hash_check[letter] .nil?
      hash_check[letter] = 1
    else
      hash_check[letter] +=1
    end 
  end 
  
  odd_count = 0
  hash_check.each do |key, value|
    if value % 2 == 1
      odd_count += 1  
    end
  end 
  
  if odd_count <= 1
    return true
  else
    return false
  end 
end 

# pp palindrome_permutation?("ada")
# pp palindrome_permutation?("hello")
# pp palindrome_permutation?("carrace")

