
def permutations?(string1, string2)
  if string1.length != string2.length 
    return false
  elsif string1.length == 0
    return true
  end
  
  checking_hash = {}
  string1.each_char do |letter|
    if checking_hash.has_key?(letter)
      checking_hash[letter] += 1
    else
      checking_hash[letter] = 1
    end
  end
  
  string2.each_char do |letter|
    if checking_hash.has_key?(letter)
      checking_hash[letter] -= 1
    else
      checking_hash[letter] = -1
    end
  end
  eval = checking_hash.values
  eval.each do |value|
    if value != 0
      return false
    end
  end
  return true
end