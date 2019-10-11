def intersection(list1, list2)
  hash = {}
  intersections = []
  list1.each do |element|
    hash[element] = true
  end

  list2.each do |element|
    if hash[element]
      intersections << element
    end
  end

  return intersections
end
