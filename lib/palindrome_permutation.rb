
def palindrome_permutation?(string)
  # short-cricuit to get rid of teensy string
  if string.length <= 1
    return true
  end
  
  # populates the reference hash
  string.upcase!
  hash = {}
  string.each_char do |char|
    if hash.include?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  
  # will be used to evaluate unpaired letters
  return_prep = 0
  
  hash.sort_by {|key, value| value}
  
  hash.each_value do |value|
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
