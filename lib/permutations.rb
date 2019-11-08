#permutations?("hello", "ehllo") => true
#permutations?("pasta", "atsap") => true
#permutations?("Pizza", "Pasta") => false
#permutations?("", "") => true
#Write a method which will take two strings as arguments and returns true if one string is a permutation of the other.

def permutations?(string1, string2)

  if string1 != string2
    return false
  end
  
  string1 = string1.chars.sort.join
  string2 = string2.chars.sort.join
  
  return string1 == string2
end

string1 = "atsap"
string2 = "pasta"
puts permutations?(string1, string2)
