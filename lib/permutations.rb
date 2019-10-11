
def permutations?(string1, string2)
  l1 = string1.length
  l2 = string2.length
  return false if l1 != l2

  hash = {}
  i = 0
  while i < l1
    hash[string1[i]] = true
    i += 1
  end

  j = 0
  while j < l2
    return false if !hash[string2[j]]
    j += 1
  end

  return true
end
