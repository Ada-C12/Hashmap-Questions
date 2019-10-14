
# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.

# palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome

def palindrome_permutation?(string)
  letters = {}
  length = string.length
  letters_in_even_numbers = 0
  letters_in_odd_numbers = 0
  
  # Put string into a hash. Key = letter; value = count of letter
  length.times do |i|
    if letters[string[i]].nil?
      letters[string[i]] = 1
    else
      letters[string[i]] += 1
    end
  end
  
  # Check each letter in hash for whether it is represented an even or odd number of times
  letters.each do |key, value|
    if value % 2 == 0
      letters_in_even_numbers += 1
    else
      letters_in_odd_numbers += 1
    end 
  end
  
  # An string with an even length should only have letters represented in an even number. An odd length should have just one letter represented an odd number of times.
  if length % 2 == 0 && letters_in_odd_numbers == 0
    return true
  elsif length % 2 == 1 && letters_in_odd_numbers == 1
    return true
  else
    return false
  end
  
end
