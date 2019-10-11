def intersection(list1, list2)
  lookup_hash = {}
  results = []

  list1.each do |num|
    lookup_hash[num] = num
  end

  list2.each do |num|
    if lookup_hash.has_value?(num)
      results << num
    end
  end

  return results
end
