def intersection(list1, list2)
  array_holder = []
  hash_holder = {}
  list1.each do |num|
    hash_holder[num] = true
  end
  list2.each do |num|
    if hash_holder[num]
      array_holder << num
    end
  end
  return array_holder 
end
