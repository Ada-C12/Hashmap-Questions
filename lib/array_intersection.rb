def intersection(list1, list2)
  return_array = []
  
  checking_hash = {}
  
  list1.each do |num|
    checking_hash[num] = nil
  end
  
  list2.each do |num|
    if checking_hash.has_key?(num)
      
      return_array << num
    end
  end
  return return_array
  
end
