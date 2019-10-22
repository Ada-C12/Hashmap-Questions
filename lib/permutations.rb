
# mom, om
def permutations?(string1, string2)
  hash = {}
  
  string1 = string1.chars
  string2 = string2.chars 
  
  string1.each do |char|
    if hash[char].nil?
      hash[char] = 1
    else
      hash[char] += 1
    end
  end
  
  string2.each do |char|
    if hash[char].nil?
      return false
    else
      hash[char] -= 1
    end
  end
  
  (hash.values.all? {|value| value == 0}) ? true: false
end