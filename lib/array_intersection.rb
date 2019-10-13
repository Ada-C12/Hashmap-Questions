def intersection(list1, list2)
  numbers = {}
  intersected_nums = []

  list1.each { |i| numbers[i] = true }

  list2.each do |i|
    if numbers[i].nil?
      numbers[i] = true
    else
      numbers[i] = false
      intersected_nums << i
    end
  end 

  return intersected_nums
end
