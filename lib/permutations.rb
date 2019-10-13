def make_letter_hash(string)
  letter_hash = {}
  
  string.each_char do |char|
    if letter_hash[char]
      letter_hash[char] += 1
    else
      letter_hash[char] = 1
    end
  end
  
  return letter_hash
end

def permutations?(string1, string2)
  hash1 = make_letter_hash(string1)
  hash2 = make_letter_hash(string2)
  
  return true if hash1 == hash2
  return false
end
