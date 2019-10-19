
def palindrome_permutation?(string)
  hash = {}
  results = []

  string.each_char do |char|
    if hash[char] == nil
      hash[char]== 0
    else
      hash[char] += 1
    end
  end
  
  hash.each_char do |char|
    if hash[char]% 2 == 1
      results << char
    end
  end
  
  if results.lenght > 1
    return false
  else
    return true
  end
end

