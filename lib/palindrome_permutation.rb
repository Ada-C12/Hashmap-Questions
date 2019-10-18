
def palindrome_permutation?(string)
  letter_count = {}
  odd_counts = 0
  
  string.each_char do |char|
    if letter_count[char]
      letter_count[char] += 1
    else
      letter_count[char] = 1
    end
  end
  
  letter_count.each do |count, value|
    if value % 2 == 1
      odd_counts += 1
    end
  end
  
  if odd_counts > 1
    return false
  end
  
  return true
end
