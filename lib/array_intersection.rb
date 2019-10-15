# Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.

# intersection([2, 3, 4], [4, 5, 6]) => [4]
# intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
# intersection([9, 30, 42], [56, 34, 90, 32]) => []

def intersection(list1, list2)
  if list1 == nil || list2 == nil
    return nil
  end
  
  lookup = {}
  intersection = []
  
  list1.each do |num|
    lookup[num] = true
  end
  
  list2.each do |i|
    if lookup[i] == true
      intersection << i
    end
  end
  
  return intersection
end
