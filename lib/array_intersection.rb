def intersection(list1, list2)

  i = 0
  # k = 0

  length_1 = list1.length
  # length_2 = list2.length
  intersection = []

  until i > length_1
    list2.each do |num|
      if list1[i] == num
        intersection << list1[i]
      end
    end
    i += 1
  end

  return intersection
  
end
