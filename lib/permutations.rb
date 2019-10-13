
def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  index = 0
  letter_hash = {}
  while index != string1.length
    if letter_hash.has_key?(string1[index])
      letter_hash[string1[index]] += 1
    else
      letter_hash[string1[index]] = 1
    end
    index += 1
  end

  index = 0
  while index != string2.length
    if letter_hash.has_key?(string2[index]) == false
      return false
    else
      letter_hash[string2[index]] -= 1
    end
    index += 1
  end

  if letter_hash.values.sum == 0
    return true
  else return false
  end
end
