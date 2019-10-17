
def palindrome_permutation?(string)
  if string.length <= 1
    return true
  end
  string.upcase!
  hash = {}
  string.each_char do |char|
    if hash.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  eval = hash.values
  eval.sort! #automatically sorts in ascending order [1, 1, 3, 17 etc.]
  return_prep = 0
  eval.each do |value|
    if value.odd?
      return_prep += 1
    end
  end
  
  if string.length.even? && return_prep != 0
    return false
  elsif string.length.odd? && return_prep != 1
    return false
  else
    return true
  end
end

