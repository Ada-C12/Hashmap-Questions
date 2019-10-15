
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |character|
    unless hash.has_key?(character)
      hash[character] = 1
    else 
      hash[character] += 1
    end
  end
  
  result = []
  if string.length.even?
    string.each_char do |char|
      result << char if hash[char].odd?
    end
    return result.length == 0
  else
    string.each_char do |char|
      result << char if hash[char].odd?
    end
    return result.length == 1
  end
end
