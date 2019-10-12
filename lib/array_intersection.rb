def intersection(list1, list2)
  # assuming 2 arrays of integers, each array having unique entries
  # return an array of shared integers between the 2 arrays
  hash = {}
  answer = []
  
  list1.each do |num|
    hash[num] = true
  end
  
  list2.each do |num|
    if hash[num]
      answer << num
    end
  end
  
  return answer
end
