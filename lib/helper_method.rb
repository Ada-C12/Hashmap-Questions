def string_to_hash(string)
  hash = {}
  string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  return hash
end