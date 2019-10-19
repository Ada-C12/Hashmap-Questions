
def permutations?(string1, string2)
  hash = {}

  string1.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  string2.each_char do |char|
    if hash[char] 
      if hash[char] > 1
        hash[char] -= 1
      else
        hash.delete(char)
      end
    else
      return false
    end
  end

  return hash.empty?
end
