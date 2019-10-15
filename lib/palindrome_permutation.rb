
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |character|
    unless hash.has_key?(character)
      hash[character] = 1
    else 
      hash[character] += 1
    end
  end
  
  results = []
  if string.length % 2 == 0
    string.each_char do |char|
      results << char if hash[char].odd?
    end
    return results.length == 0
  else
    string.each_char do |char|
      results << char if hash[char].odd?
    end
    return results.length == 1
  end
  return false
end
