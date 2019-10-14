def intersection(list1, list2)
  hash = {}
  list1.each do |num1|
    hash[num1] = true
  end

  intersection = []
  list2.each do |num2|
    intersection << num2 if hash[num2]
  end

  return intersection
end
