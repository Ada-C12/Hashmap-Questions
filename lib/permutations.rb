
def permutations?(string1, string2)
  return false unless string1.length == string2.length

  hash = {}
  string1.each_char { |c| hash[c] = true }

  string2.each_char do |c|
    return false if hash[c].nil?
  end
  
  return true
end
