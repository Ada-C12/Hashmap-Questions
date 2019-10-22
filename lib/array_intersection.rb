def intersection(list1, list2)
  hash = {}
  array = []
  list1.each do |num|
    hash[num] = 0
  end
  list2.each do |num|
    if hash.key?(num)
      array << num
    end
  end
  return array
end