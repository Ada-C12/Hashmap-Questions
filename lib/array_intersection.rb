def intersection(list1, list2)
  output = []
  hash = {}

  list1.each do |num|
    hash[num] = true
  end

  list2.each do |num|
    if hash[num]
      output << num
    end
  end

  return output
end
