def permutations?(string1, string2)
  if string1.length != string2.length
    return false
  elsif string1 == nil || string2 == nil
    return false
  end
  
  string1 = convert_to_array(string1)
  hash_a = convert_to_hash(string1)
  array_b = convert_to_array(string2)
  
  array_b.each do |value|
    if hash_a.key?(value)==true
      hash_a[value] -=1
      if hash_a[value] == 0
        hash_a.delete(value)
      end
    end
  end
  if hash_a == {}
    return true
  else
    return false
  end
end

def convert_to_hash(array_input)
  hash = Hash.new(0)
  array_input.each do |element|
    hash[element] += 1
  end
  return hash
end

def convert_to_array(string_input)
  string_input = string_input.chars
  return string_input
end
