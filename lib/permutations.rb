
def permutations?(string1, string2)
  raise ArgumentError unless (string1.instance_of?(String) && string2.instance_of?(String)) 
  
  return false if string1.length != string2.length 
  
  letter_count_hash = {}
  string1.each_char do |letter|
    if letter_count_hash[letter] == nil
      letter_count_hash[letter] = 1
    else
      letter_count_hash[letter] += 1
    end
  end
  
  string2.each_char do |letter|
    if letter_count_hash[letter] == nil
      return false
    elsif letter_count_hash[letter] == 1
      letter_count_hash.delete(letter)
    else
      letter_count_hash[letter] -= 1
    end
  end
  return letter_count_hash.empty?
end
