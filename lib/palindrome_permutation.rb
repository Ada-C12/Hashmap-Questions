require_relative "helper_method"

def palindrome_permutation?(string)
  return true if string == ""
  hash = string_to_hash(string)

  count = 0
  hash.each do |k, v|
    if v.odd? == true
      count += 1
    end
  end 

  if count < 2
    return true
  else 
    return false
  end
end