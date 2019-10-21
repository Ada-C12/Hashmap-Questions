require "pry"
def palindrome_permutation?(string)
  # binding.pry
  if string == ""
    return true
  end
  string_array = string.chars
  hash = Hash.new()

  string_array.each do |char|
    if hash.include? char
      hash[char] += 1
    else
      hash[char] = 1 
    end
  end

  odd = 0
  hash.each_value do |value|
    if value % 2 != 0
      odd += 1
    end
  end
  if odd > 1 
    return false
  else
    return true
end

end
