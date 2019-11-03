def palindrome_permutation?(string)
  if string == nil
    return false
  end
  
  test = string.length % 2
  if test != 0
    even = false
  else
    even = true
  end
  
  hash_string = convert_to_hash(convert_to_array(string))
  
  hash_string.each do |key, value|
    if value % 2 != 0 && even == true
      return false
    end
    if value % 2 != 0 && even == false
      even = true
    end
  end
  return true
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
