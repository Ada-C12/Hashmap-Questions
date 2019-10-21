#time complexity: o(n*m)
#space complexity: o(n*m)

def intersection(list1, list2)
  #Instantiate a hash that has all unique elements of list1. 
  #That way we can ensure we don't see any duplicates.
  #We put all unique elements of the first array into the new hash.

  hash = {}
  list1.each do |i|
    hash[i] = true
  end

  #Now check if elements in list2 are present in the newly made hash
  #If element is not present, loop ends and we move to the next element.
  #If element IS present, put found element in the final result.
  
  intersection = []
  list2.each do |j|
    if hash[j]
    intersection << j
    end
  end
  return intersection
end

