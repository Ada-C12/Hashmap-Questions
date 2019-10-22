def palindrome_permutation?(string)
  string_hash = {}
  
  string.each_char do |char|
    count = string_hash[char] || 0
    string_hash[char] = count + 1
  end
  
  if string_hash.size > 1
    odd_count = 0
    string_hash.each_value do |value|
      if value % 2 != 0
        odd_count += 1
        if odd_count > 1
          return false
        end
      end       
    end
  end
  
  return true
end

