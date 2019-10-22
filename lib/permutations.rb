
def permutations?(string1, string2)
  
  if string1.empty? || string2.empty?
    return true
  elsif string1.length != string2.length
    return false
  end


  i = string1.chars
  j = string2.chars
  hash = {}
  
  i.each do |char|
    hash[char] = true
  end

  j.each do |char|
    if hash[char] == nil
      return false
    end
  end
  return true
end
