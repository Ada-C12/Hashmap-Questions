
def palindrome_permutation?(string)
  if string.empty?
    return true
  end
  
  hash = {}
  even_array = []
  count = 0
  odd_array = []
  
  str_array = string.split("")
  
  str_array.each do |letter|
    if hash[letter]
      hash[letter] += 1
    else
      hash[letter] = 1
    end
  end
  
  hash.each do |letter, count|
    even_array << count.even?
  end
  
  even_array.each do |result|
    if result == false
      odd_array << result
      count += 1
    end
  end
  if odd_array.count > 1
    return false
  else
    return count.odd? ? true: false
  end
end
