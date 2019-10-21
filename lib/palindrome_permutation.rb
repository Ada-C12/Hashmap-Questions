
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |letter|
    if hash[letter] == nil
      hash[letter] = 1
    else
      hash[letter] += 1
    end
  end 
  
  string.length % 2 == 0 ? word_even = true : word_even = false
  
  number_odd = 0
  
  hash.values.each do |value|
    if value % 2 != 0
      number_odd += 1
    end
  end
  
  if word_even && number_odd > 0
    return false
  elsif word_even == false && number_odd > 1
    return false
  else
    return true
  end 
  
end
