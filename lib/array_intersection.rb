def intersection(list1, list2)
  hash = {}
  list1.each do |num|
    hash.merge!("#{num}": num)
  end

  intersection = []
  list2.each do |num|
    if hash.key?(:"#{num}") == true
      intersection << num
    end
  end 

  return intersection
end