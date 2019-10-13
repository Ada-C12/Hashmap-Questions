def intersection(list1, list2)
  num_hash = {}
  intersect_nums = []
  
  list1.each do |num|
    num_hash[num] = true
  end
  
  list2.each do |num|
    intersect_nums << num if num_hash[num]
  end
  
  return intersect_nums  
end
