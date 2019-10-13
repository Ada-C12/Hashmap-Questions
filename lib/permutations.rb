require 'pry'

def permutations?(string1, string2)
  hash = {}
  if string1.length != string2.length
    return false
  end
  
  string1.each_char do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end

  string2.each_char do |letter|
    if hash[letter] && hash[letter] != 0
      hash[letter] -= 1
    else
      return false
    end
  end
  return true
end
