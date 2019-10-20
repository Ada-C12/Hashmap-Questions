def intersection(list1, list2)
  hash = {}
  intersections = []
  
  list1.each do |element|
    hash[element] = true
  end
  
  list2.each do |num|
    if hash.key?(num)
      intersections << num
    end
  end
  
  return intersections
end

