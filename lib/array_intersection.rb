def intersection(list1, list2)
  hash = {}
  results = []

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num]
      results << num
    end
  end

  return results
end
