def intersection(list1, list2)
  # what I had before
  # list1 = list1.sort
  # list2 = list2.sort
  # intersect = []
  
  # until list1[0] == nil || list2[0] == nil
  #   if list1[0] < list2[0] 
  #     list1.shift
  #   elsif list1[0] > list2[0] 
  #     list2.shift
  #   elsif list1[0] == list2[0]
  #     intersect << list1[0]
  #     list1.shift
  #     list2.shift
  #   end
  # end
  # return intersect
  
  
  # using hash tables
  hash_list1 = {}
  list1.each do |num|
    if hash_list1.has_key?(num)
      hash_list1[num] += 1
    else
      hash_list1[num] = 1
    end
  end
  
  intersect = []
  
  list2.each do |num|
    if hash_list1.has_key?(num)
      intersect << num
    end
  end
  
  return intersect
end