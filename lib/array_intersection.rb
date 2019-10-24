require "pry"
def intersection(list1, list2)

  hash = {}
  return_array = []

  list1.each_with_index do |num, index|
    
    hash[num] = list1[index]
    i = 0
    while i < list2.length
      
      if hash[num] == list2[i]
        
        return_array << list2[i]
      end
      i += 1
    end
  end 
  return_array
end


