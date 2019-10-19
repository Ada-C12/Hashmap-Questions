
def permutations?(string1, string2)
  hash = {}
  string1.each do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  
  string2.each do |letter|
    if hash[letter] && hash[letter] != 0
      hash[letter] -= 1
    else
      return false
    end
    return true
  end
end