# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
#palindrome_permutation?("hello") => false
#palindrome_permutation?("carrace") => true # because racecar is a palindrome

def palindrome_permutation?(string)
  string2 = reverse_string(string)
  
  if string2 == string
    return true
  else 
    return false
  end 
end

def reverse_string(string)
  rev_string = []
  i = string.length - 1
  
  while i >= 0
    rev_string << string[i]
    i-=1
  end
  return rev_string.join
end

# pp palindrome_permutation?("ada")
# pp palindrome_permutation?("hello")
