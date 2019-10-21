
def permutations?(string1, string2)

  if string1 == string2
    return true
  end

  if string1.length != string2.length
    return false
  end

  string1_array = string1.chars
  string2_array = string2.chars
  hash = Hash.new()

  string1_array.each do |char|
    if hash.include? char
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  string2_array.each do |char|
    if hash.include? char
      hash[char] -= 1
    else
      return false
    end
  end

  hash.each do |char, value|
    if hash[char] != 0
      return false
    else
      return true
    end
  end
  
end
