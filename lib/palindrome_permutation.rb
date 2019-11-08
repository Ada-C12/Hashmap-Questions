#each_char
#palindrome_permutation?("hello") => false
#palindrome_permutation?("carrace") => true #because racecar is a palindrome
#Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.


def palindrome_permutation?(my_string)
  return false if my_string == nil
  
  i = 0 #where we start
  j = my_string.length -1
  
  while i < j
    i += 1 while i < j && my_string[i] == " "
    j -= 1 while i < j && my_string[j] == " "
    
    return false if my_string[i] != my_string[j]
    
    i += 1
    j -= 1
    
  end
  return true

end

