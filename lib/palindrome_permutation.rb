def palindrome_permutation?(string)
  split_string = string.split("")
  sorted_string = split_string.sort 
  
  until sorted_string.length < 2
    if sorted_string[0] != sorted_string[1]
      if sorted_string[1] != sorted_string[2]
        return false
      else
        sorted_string.delete_at(1)
        sorted_string.delete_at(1)
      end
    else 
      sorted_string.shift
      sorted_string.shift
    end
  end
  return true
end
