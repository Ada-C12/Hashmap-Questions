def palindrome_permutation?(string)
  hash = {}
  i = 1
  nones = 0
  
  string.each_char do |char|
    if hash[char] == nil
      hash[char] = i
    else
      hash[char] += 1
    end
  end

  hash.each do |char, times|
    if times % 2 != 0
      nones += 1
    end
  end

  if nones > 1
    return false
  else
    return true
  end
end

