def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end

  hash_1 = {}
  string1.each_char do |char|
    if hash_1.key?(:"#{char}") == false
      hash_1.merge!("#{char}": 1 )
    else
      hash_1[:"#{char}"] += 1
    end
  end

  hash_2 = {}
  string2.each_char do |char|
    if hash_2.key?(:"#{char}") == false
      hash_2.merge!("#{char}": 1 )
    else
      hash_2[:"#{char}"] += 1
    end
  end

  if hash_1 == hash_2
    return true
  else
    return false
  end
end