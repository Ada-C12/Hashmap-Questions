def intersection(list1, list2)
  raise ArgumentError unless (list1.is_a?(Array) && list2.is_a?(Array))  
   
  list1_values_hash = {}
  list1.each {|value| list1_values_hash[value] = true }

  result = []
  list2.each do |value|
    if list1_values_hash[value] == true
      result << value
    end
  end
  return result
end
