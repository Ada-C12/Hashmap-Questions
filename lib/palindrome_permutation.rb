require_relative "helper_method"

def palindrome_permutation?(string)
  if string == ""
    return true
  elseif string.length.even? == true
    return false
  end

  hash = string_to_hash(string)

  tracker = []
  hash.each do |k, v|
    if v.odd? == true
      tracker << k
    end
  end 

  if tracker.length != 1
    return false
  else 
    return true
  end
end