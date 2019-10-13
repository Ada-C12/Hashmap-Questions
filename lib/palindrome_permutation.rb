def palindrome_permutation?(string)
  # I am using this index-iteration strategy here and in permutations.rb because I'm operating on the assumption that it would be more expensive, space-wise, to make an array of characters using string.chars. Is this true?
  
  index = 0
  hash = {}
  while index != string.length
    if hash.has_key?(string[index])
      hash[string[index]] -= 1
    else hash[string[index]] = 1
    end
    index += 1
  end
  if hash.values.sum == 1 || hash.values.sum == 0
    return true
  else return false
  end
end
