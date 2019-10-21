def permutations?(string1, string2)
  characters = {}
  i = 0
  j = 0
  same_char = 0

  if string1.length == string2.length
    while i < string1.length
      characters[string1[i]] = 1
      i += 1
    end

    while j < string1.length
      if characters[string2[j]] == 1
        same_char += 1
      end
      j += 1
    end
    return same_char == string1.length
  end
  return false
end