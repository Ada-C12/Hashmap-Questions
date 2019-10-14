def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash1 = {}
  string1.each_char do |char|
    if hash1[char]
      hash1[char] += 1
    else
      hash1[char] = 1
    end
  end


  hash2 = {}
  string2.each_char do |char|
    if !hash1[char]
      return false
    elsif hash2[char]
      hash2[char] += 1
    else
      hash2[char] = 1
    end
  end

  hash1 == hash2 ? true : false
end
