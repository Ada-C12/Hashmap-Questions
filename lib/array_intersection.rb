#Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.

#intersection([2, 3, 4], [4, 5, 6]) => [4]
#intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
#intersection([9, 30, 42], [56, 34, 90, 32]) => []

def intersection(list1, list2)

  listone_hash = {}
  answer = []
  
  list1.each do |num|
    listone_hash.has_value?(num) 
  end
  
  list2.each do |num|
    listone_hash.has_value?(num)
    answer << listone_hash
  end
  return answer
end

# [list1 & list2] 
# will give also give us the intersection.
