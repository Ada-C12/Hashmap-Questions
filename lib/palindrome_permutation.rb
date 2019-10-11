
def palindrome_permutation?(string)
  hash = {}
  leng = string.length

  i = 0
  while i < leng
    if hash[string[i]]
      hash[string[i]] += 1
    else
      hash[string[i]] = 1
    end
    i += 1
  end

  odd_v = 0
  hash.each do |k, v|
    odd_v += 1 if v.odd?
  end

  return odd_v <= 1
  
end
