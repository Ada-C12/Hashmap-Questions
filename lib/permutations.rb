def permutations?(string1, string2)
  letters = {}
  
  return false if string1.length != string2.length
  
  (string1.split("")).each do |letter|
    letters[letter] = false
  end
  
  (string2.split("")).each do |letter|
    if letters[letter] == false
      letters[letter] == true
    else
      return false
    end
  end
  
  return true
end


p permutations?("hello", "ehllo") #true
# p permutations?("pasta", "atsap") #true
# p permutations?("pizza", "pasta") #false
# p permutations?("pizza", "piza") #false
