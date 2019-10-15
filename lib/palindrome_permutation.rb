
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |character|
    unless hash.has_key?(character)
      hash[character] = 1
    else 
      hash[character] += 1
    end
  end
  
  if string.length % 2 == 0
    even_array = hash.values
    return even_array.all? { |num| num.even? }
  else
    odd_array = hash.values.reject { |num| num.even? }
    return true if odd_array.length == 1
  end
  return false
end
