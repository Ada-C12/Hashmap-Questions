
def permutations?(string1, string2)
  # raise NotImplementedError, "permutations? not implemented"

  if string1 == "" && string2 == ""
    return true
  end

  if string1.length != string2.length
    return false
  end

  new_hash = {}
  i = 0
  while i < string1.length
    new_hash[string1[i]] = true
    i += 1
  end

  i = 0
  while i < string2.length
    if new_hash[string2[i]] == true
      i += 1
    else
      return false
    end
  end
  return true
end