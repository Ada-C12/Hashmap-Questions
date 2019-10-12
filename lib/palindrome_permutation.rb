def palindrome_permutation?(string)
  return true if string == ""

  hash = {}

  index = 0
  string.each_char do |c|
    if hash[string[index]]
      hash[string[index]] += 1
    else
      hash[string[index]] = 1
    end
    index += 1
  end

  odd_count = 0
  hash.each do |letter, count|
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
