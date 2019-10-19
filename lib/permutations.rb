
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  hash_holder = {}
  string1.chars.each do |char|
    hash_holder[char] = true
  end
  string2.chars.each do |char|
    if !hash_holder[char]
      return false
    end
  end
  return true
end
