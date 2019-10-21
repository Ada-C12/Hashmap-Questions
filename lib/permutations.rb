def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  end
  
  array_1 = string1.split("")
  array_2 = string2.split("")
  sorted_array_1 = array_1.sort 
  sorted_array_2 = array_2.sort
  
  count = 0
  while count < sorted_array_1.length
    if sorted_array_1[count] != sorted_array_2[count]
      return false
    else  
      count += 1
    end
  end
  return true
end
