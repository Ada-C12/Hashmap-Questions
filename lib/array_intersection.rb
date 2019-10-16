def intersection(list1, list2)
  hash = {}
  intersection = []
  
  list1.each do |element|
    hash.store(element, true)
  end  

  list2.each do |element|
    if hash[element] != nil
      intersection << element
    end
  end

  return intersection
end

#Time complexity: O(n)
#Space complexity: O(n)