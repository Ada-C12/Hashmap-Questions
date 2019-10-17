def palindrome_permutation?(string)
  return true if string == ""

  string_hash = {}

  index = 0
  string.each_char do |c|
    if string_hash[string[index]]
      string_hash[string[index]] += 1
    else
      string_hash[string[index]] = 1
    end
    index += 1
  end

  odd_count = 0
  string_hash.each do |letter, count|
    if count.odd?
      odd_count += 1
    end
  end

  if odd_count <= 1
    return true
  else
    return false
  end
end
