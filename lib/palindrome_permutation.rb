
def palindrome_permutation?(string)
  if string.empty?
    return true
  end

  hash = {}
  
  string.each_char do |c|
    if hash[c] == nil
      hash[c] = 1
    else
      hash[c] += 1
    end
  end

  count = 0
  values_array = hash.values
  values_array.each do |num|
    if num.odd? == true
      count += 1
      if count > 1
        return false
      end
    end
  end
  return true
end

