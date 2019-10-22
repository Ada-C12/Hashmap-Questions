#Design and implement a method that takes two integer arrays with unique values and returns their intersection in a new array.

def intersection(list1, list2)
  list1_hash = {}
  list1.each do |element|
    list1_hash[element] = true
  end
  
  result = []
  list2.each do |element|
    if list1_hash[element]
      result << number
    end
  end
  return result
end

