
def palindrome_permutation?(string)
  # palindrome_permutation?("hello") => false
# palindrome_permutation?("carrace") => true # because racecar is a palindrome
# Write a method which takes a string as an argument and returns true if the letters could be re-arranged into a palindrome.
  hash = {}

  string.each_char.with_index do |letter, index|

    if hash[letter] == nil
      hash[letter] = 1
    elsif hash[letter] != nil
      hash[letter] += 1
    end
  end
  
  hash_values = hash.values

  if string.length.even?
    if hash_values.count(1) != 0
      return false
    end
  elsif string.length.odd?
    if hash_values.count(1) > 1
      return false
    end
  end 
  return true 
end

