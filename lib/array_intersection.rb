def intersection(list1, list2)
  intersection = []
  hash = {}
  list1.each do |item|
    hash[item] = true
  end
  
  list2.each do |item|
    if hash[item] == true
      intersection << item
    end
  end
  
  return intersection
end
