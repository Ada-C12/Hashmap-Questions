# Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.
#intersection([2, 3, 4], [4, 5, 6]) => [4]
#intersection([50, 43, 25, 72], [25, 36, 43, 50, 80]) => [50, 25, 43]
#intersection([9, 30, 42], [56, 34, 90, 32]) => []

def intersection(list1, list2)   
  hash_check = {}
  list1.each do |num|
    hash_check[num] = true
  end
  
  result = []
  list2.each do |i|
    if hash_check[i] == true
      result << i 
    end 
  end 
  return result
end
