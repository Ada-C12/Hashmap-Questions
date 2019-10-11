
def permutations?(string1, string2)
  return false unless string1.length == string2.length
  
  hash = {}
  string1.each_char do |c|
    hash[c] = true
  end

  string2.each_char do |c|
    unless hash[c]
      return false
    end
  end
  
  return true
end
