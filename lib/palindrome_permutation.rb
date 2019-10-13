def palindrome_permutation?(string)
  letter_hash = {}
  
  string.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  odd_letters = 0
  
  letter_hash.each do |letter, number|
    odd_letters += 1 if number % 2 != 0
  end
  
  return true if odd_letters <= 1
  return false
end
