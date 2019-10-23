def intersection(list1, list2)
  def intersection(array1, array2)
    int_array = []
    hash = {}
    i = 0
    j = 0
  
    if array1.length > array2.length
      while i < array1.length
        hash[array1[i]] = 1
        i += 1
      end
  
      while j < array1.length
        if hash[array2[j]] == 1
          int_array << array2[j]
        end
        j += 1
      end
    else
      while i < array2.length
        hash[array1[i]] = 1
        i += 1
      end
  
      while j < array2.length
        if hash[array2[j]] == 1
          int_array << array2[j]
        end
        j += 1
      end
  
    end
  
    return int_array
  end
end

