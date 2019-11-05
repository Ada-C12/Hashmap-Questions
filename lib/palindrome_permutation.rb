def palindrome_permutation?(string)
  # what I had before
  # split_string = string.split("")
  # sorted_string = split_string.sort 
  
  # until sorted_string.length < 2
  #   if sorted_string[0] != sorted_string[1]
  #     if sorted_string[1] != sorted_string[2]
  #       return false
  #     else
  #       sorted_string.delete_at(1)
  #       sorted_string.delete_at(1)
  #     end
  #   else 
  #     sorted_string.shift
  #     sorted_string.shift
  #   end
  # end
  # return true
  
  # using hash tables
  hash_string = {}
  string.each_char do |char|
    if hash_string.has_key?(char)
      hash_string[char] += 1
    else  
      hash_string[char] = 1
    end
  end
  
  hash_values = hash_string.values
  
  single_char = 0
  
  hash_values.each do |value|
    if value == 1
      single_char += 1
      if single_char > 1
        return false
      end
    elsif value > 2
      return false
    end
  end
  
  return true
end
