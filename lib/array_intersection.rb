def intersection(list1, list2)
  list1_hash = {}
  results = []

  list1.each do |num|
    list1_hash[num] = num
  end

  list2.each do |num|
    if list1_hash.has_value?(num)
      results << num
    end
  end

  return results
end
