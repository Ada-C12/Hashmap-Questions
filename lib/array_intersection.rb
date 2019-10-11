def intersection(list1, list2)
  hash = {}
  intersections = []
  list1.each { |element| hash[element] = true }

  list2.each do |element|
    intersections << element if hash[element]
  end

  return intersections
end
