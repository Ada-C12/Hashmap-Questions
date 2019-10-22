
def permutations?(string1, string2)
  
  if string1.empty? || string2.empty?
    return true
  elsif string1.length != string2.length
    return false
  end


  i = string1.chars
  j = string2.chars
  hash = {}
  hash1 = {}

  
  i.each do |char|
    hash1[char] = true
  end

  j.each do |char|
    if hash[char] == false
      return false
    else
      return true
    end
  end
end
