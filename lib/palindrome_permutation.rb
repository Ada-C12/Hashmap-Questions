def palindrome_permutation?(string)
  return true if string.length == 0 

  hash = {}
  string.each_char do |letter|
    if hash.key?(letter)
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end

  result = hash.select {|k,v| v == 1}
  if result.length == 1
    return true
  else
    return false
  end
end
