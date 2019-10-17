def intersection(list1, list2)
  return_array = []
  
  reference_array = []
  checking_array = []
  
  checking_hash = {}
  
# The following block is just to make sure that the shortest string is used to creae the reference however, both of the lists are going to be iterated across, so maybe there's no point in doing it like this.  

  if list1.length < list2.length
    checking_array = list1
    reference_array = list2
  else
    checking_array = list2
    reference_array = list1
  end
  
  checking_array.each do |num|
    checking_hash[num] = nil
  end
  
  reference_array.each do |num|
    if checking_hash.has_key?(num)
      
      return_array << num
    end
  end
  return return_array
  
end

