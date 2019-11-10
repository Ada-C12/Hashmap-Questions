def intersection(list1, list2)
  list1_hash = {}
  intersection = []
  
  # create the hashmap for list1
  list1.each do |number|
    if list1_hash.include? number
      list1_hash[number] += 1
    else 
      list1_hash[number] = 1
    end
  end
  
  # compare list2 to the hash -- if there's a match, put the number in the intersection array
  
  list2.each do |number|
    if list1_hash.include? number
      intersection << number
      # decrement the tally for the number in the hash so duplicates are handled appropriately
      list1_hash[number] -= 1
    end
  end
  return intersection
end

