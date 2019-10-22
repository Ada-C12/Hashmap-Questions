def intersection(list1, list2)
  values = {}
  match = []
  
  list1.each do |item|
    values[item] = ""
  end
  
  list2.each do |item|
    if values[item]
      match << item
    end
  end
  return match
end


# p intersection([2,3,4], [4,5,6]) #[4]
# p intersection([50,43,25,72], [25,36,43,50,80]) #[50, 43, 25]
# p intersection([9,30,42], [56,34,90,32]) #[]