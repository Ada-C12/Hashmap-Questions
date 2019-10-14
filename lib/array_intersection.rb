# takes two integer arrays with unique values and returns their intersection in a new array
def intersection(list1, list2)
  # create a hash
  hash = {}
  # create an output list
  output = []
  
  # for each list1 item,
  list1.each do |num1|
    # make it a key in the hash and set it to true
    hash[num1] = true
  end
  
  # for each list2 item,
  list2.each do |num2|
    # check if it's a key in the hash
    if hash.has_key?(num2)
      # if it is, add it to the output
      output << num2
    end
  end
  
  # return output
  return output
end
