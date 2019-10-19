
def palindrome_permutation?(string)
  # raise NotImplementedError, "palindrome_permutation? not implemented"

  if string == ""
    return true
  end

  new_hash = {}
  i = 0
  while i < string.length
    if new_hash[string[i]]
      new_hash[string[i]] += 1
    else
      new_hash[string[i]] = 1
    end
    i += 1
  end

  odd_character = 0
  new_hash.each do |char, value|
    if value % 2 == 1
      odd_character += 1
    end
  end

  if odd_character > 1
    return false
  else
    return true
  end


end

