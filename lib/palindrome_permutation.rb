
def palindrome_permutation?(string)
  hash_holder = {}
  string.chars.each do |char|
    if hash_holder[char]
      hash_holder[char] += 1
    else
      hash_holder[char] = 1
    end
  end
  
  middle_char = 0
  hash_holder.each do |k, v|
    if v.odd?
      middle_char += 1
      if middle_char > 1
        return false
      end
    end
  end
  
  return true
end
