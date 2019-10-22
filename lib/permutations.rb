
def permutations?(string1, string2)
  hash = {}
  string1 = string1.split("")
  string2 = string2.split("")

  string1.each do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  string2.each do |char|
    if hash[char]
      hash[char] -= 1
    else
      return false
    end
  end
  hash.each do |char, value|
    if value != 0
      return false
    end
  end
  return true
end
