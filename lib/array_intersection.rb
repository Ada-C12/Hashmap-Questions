def intersection(list1, list2)
  result = []
  hash = {}
  list1.each do |num|
    hash[num] = false 
  end 

  list2.each do |num|
    if hash[num] == false 
      result << num
    end 
  end 
  return result 
end
