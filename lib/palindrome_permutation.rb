
def palindrome_permutation?(string)
  hash = Hash.new
  results = Array.new
  
  string.each_char do |char|
    
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
    
  end
  
  string.each_char do |char|
    results << char if hash[char].odd?
  end
  return results.length <= 1 
  
end
