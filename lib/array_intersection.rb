def intersection(list1, list2)
  numbers = []
  hash = {}
  
  list1.each do |num|
    hash[num] = 0
  end
  
  list2.each do |num|
    if hash[num]
      numbers << num
    end
  end
  return numbers
  
end
