def intersection(list1, list2)
  
  if list1.length == 0 || list2.length == 0
    return []
  end
  
  intermediate = {}
  intersect = []
  
  list1.each do |element|
    intermediate[element] = 1
  end
  
  list2.each do |element|
    if intermediate[element]
      intermediate[element] += 1
    end
  end
  
  intermediate.each do |key, value|
    if value == 2
      intersect << key
    end
  end
  
  return intersect
  
end
