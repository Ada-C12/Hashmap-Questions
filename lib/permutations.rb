def permutations?(string1, string2)
  if string1.length == 0 && string2.length == 0
    return true
  elsif string1.length != string2.length
    return false
  end

  hash = {}
  string1.each_char do |letter|
    hash[letter] = true
  end

  string2.each_char do |letter|
    unless hash[letter]
      return false
    end
  end
    return true

  # string2.each_char do |letter|
  #   if hash.key?(letter)
  #     hash[letter] = true
  #   else
  #     hash[letter] = false
  #   end
  # end

  # if hash.value?(false)
  #   return false
  # else
  #   return true
  # end
end