def intersection(list1, list2)
  # Time: O(n), where n = length of the longer list
  # Space: O(m), where m = length of the shorter list
    # inventory_hash should be O(1) b/c there's a finite number of characters in existence
    # the answer[] could carry all the numbers in the shorter list though

  # assuming 2 arrays of integers, each array having unique entries
  # return an array of shared integers between the 2 arrays
  inventory_hash = {}
  answer = []
  
  list1.each do |num|
    inventory_hash[num] = true
  end
  
  list2.each do |num|
    if inventory_hash[num]
      answer << num
    end
  end
  
  return answer
end
