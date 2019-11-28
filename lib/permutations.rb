require_relative "helper_method"

def permutations?(string1, string2)
  return false if string1.length != string2.length

  hash1 = string_to_hash(string1)
  hash2 = string_to_hash(string2)

  if hash1 == hash2
    return true
  else
    return false
  end
end