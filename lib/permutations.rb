def permutations?(string1, string2)
  lookup_hash = {}

  return false if string1.length != string2.length

  # each_char will iterate through each letter in a string
  string1.each_char do |c|
    lookup_hash[c] = c
  end

  string2.each_char do |c|
    if lookup_hash[c] != c
      return false
    end
  end
  return true
end
