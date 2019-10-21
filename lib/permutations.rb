# The time complexity of this algorithm is O(n + m) which reduces to O(n) because of the two loops (n is equal the length of string1, and m is equal to the length of string2). The space complexity is O(n) where n is the length of string1_values.

def permutations?(string1, string2)
  return false unless string1.length == string2.length

  string1_values = {}
  string1.each_char do |c| 
    string1_values[c] = true
  end

  string2.each_char do |c|
    return false unless string1_values[c]
  end
  
  return true
end
