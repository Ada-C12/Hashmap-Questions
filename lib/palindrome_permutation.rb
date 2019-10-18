
def palindrome_permutation?(string)
  raise ArgumentError unless string.instance_of?(String)
  
  letter_count_hash = {}
  string.each_char do |letter|
    if letter_count_hash[letter] == nil
      letter_count_hash[letter] = 1
    else
      letter_count_hash[letter] += 1
    end
  end
  
  odd_count = 0
  letter_count_hash.each_value do |value|
    if (value % 2) != 0
      odd_count += 1
      return false if odd_count > 1
    end
  end
  
  return true
end
