def intersection(list1, list2)
  # raise NotImplementedError, "Intersection not implemented"
  if list1 == [] && list2 == []
    return []
  end

  new_hash = {}
  new_array = []
  
  i = 0
  while i < list1.length
    new_hash[list1[i]] = true
    i += 1
  end

  i = 0
  while i < list2.length
    if new_hash[list2[i]]
      new_array << list2[i]
    end
    i += 1
  end

  return new_array
end

