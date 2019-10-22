def intersection(list1, list2)
  hash = {}
  return_array = []
  
  if list1.nil? || list2.nil?
    return array = []
  end

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num] == true
    return_array << num
    end
  end
  return return_array
end

