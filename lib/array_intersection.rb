def intersection(list1, list2)
  hash = {}
  list1.each do |element|
    hash[element] = true
  end
  answer = []
  list2.each do |element|
    if hash[element]
      answer << element
    end
  end
  return answer
end
