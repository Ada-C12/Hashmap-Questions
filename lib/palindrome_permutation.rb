def palindrome_permutation?(string)
  letters_hash = {}
  letters_array = string.split("")
  matches = 0
  
  letters_array.each do |letter|
    if letters_hash[letter] == false
      letters_hash[letter] = true
      matches += 1
      # good, it's in there...what about more than once?
    else
      letters_hash[letter] = false
    end
  end
  
  # p letters_hash
  # p letters_array.length - matches
  
  return (letters_array.length - matches * 2 <= 1)
end


# p palindrome_permutation?("racecar") #true
# p palindrome_permutation?("carrace") #true
# p palindrome_permutation?("testing") #false
# p palindrome_permutation?("qwerrewq") #true
# p palindrome_permutation?("hello") #false
