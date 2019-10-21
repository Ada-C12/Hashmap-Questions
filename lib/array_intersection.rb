# The time complexity of this algorithm is O(n + m) which reduces to O(n) because of the two loops (n is equal the length of list1, and m is equal to the length of list2). The space complexity is O(n + m) where n is the length of list1_values and m is the length of the intersections array. The space complexity also reduces to O(n).

def intersection(list1, list2)
  list1_values = {}
  intersections = []

  list1.each do |element| 
    list1_values[element] = true 
  end

  list2.each do |element|
    intersections << element if list1_values[element]
  end

  return intersections
end
