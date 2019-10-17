def intersection(list1, list2)
  raise ArgumentError unless (list1.is_a?(Array) && list2.is_a?(Array))   
  hash = {}
  list1.each { |element| hash[element] = true }
  result = []
  list2.each do |element|
    if hash[element] == true
      result << element
    end
  end
  return result
end
