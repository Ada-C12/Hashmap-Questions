def intersection(list1, list2)
  hash_a = convert_to_hash(list1)
  intersect_values = []
  list2.each do |value|
    if hash_a.key?(value)==true
      hash_a[value] -=1
      if hash_a[value]==0
        hash_a.delete(:value)
      end
      intersect_values << value
    end
  end
  return intersect_values
end

def convert_to_hash(array_input)
  hash = Hash.new(0)
  array_input.each do |element|
    hash[element] += 1
  end
  return hash
end
