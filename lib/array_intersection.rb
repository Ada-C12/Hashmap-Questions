def intersection(list1, list2)
  list2hash = {}
  list2.each do |value| 
    list2hash[value] = nil 
  end
  
  result = []
  list1.each do |value|
    if list2hash.include? value
      result << value
    end
  end
  return result 
end

