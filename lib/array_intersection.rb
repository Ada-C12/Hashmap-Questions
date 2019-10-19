def intersection(list1, list2)
  hash ={}
  solution_array = []
  
  list1.each do |num|
    hash[num] = true
  end
  
  list2.each do |num|
    if hash[num]
      solution_array << num
    end
  end
  return solution_array
end

