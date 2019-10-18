
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  
  letter_count = {}
  
  string1.each_char do |char|
    if letter_count[char]
      letter_count[char] += 1
    else
      letter_count[char] = 1
    end
  end
  
  string2.each_char do |char|
    if letter_count[char]
      letter_count[char] += 1
    else 
      return false
    end
  end
  
  letter_count.each do |char, count|
    if count % 2 == 1
      return false
    end
  end
  
  return true
end
