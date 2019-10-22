def intersection(list1, list2)
  hash = {}
  intersect = []
  
  list1.each do |num|
    if hash[num].nil?
      hash[num] = 1
    end
  end
  
  list2.each do |num|
    if hash[num]
      intersect << num
    end
  end
  
  return intersect
end

