def intersection(list1, list2)
  union_hash = {}
  list1.each do |num|
    union_hash[num] = true
  end

  inter_arry = []
  list2.each do |num|
    inter_arry << num if union_hash[num]
  end 

  return inter_arry
end