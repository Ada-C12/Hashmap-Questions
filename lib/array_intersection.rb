def intersection(list1, list2)
  hash = Hash.new
  
  list1.each do |num|
    hash[num] = true
  end
  
  intrsctn = []
  
  list2.each do |num|
    if hash[num]
      intrsctn << num
    end
  end
  
  return intrsctn
end
