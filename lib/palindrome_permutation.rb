
def palindrome_permutation?(string)
  hash = {}
  odds = []
  string = string.chars
  
  string.each do |char|
    if hash[char].nil?
      hash[char] = 1
    else
      hash[char] += 1
    end
  end
  
  hash.each do |key, value|
    if value.odd?
      odds << value
      if odds.length > 1 
        return false
      end
    end
  end
  
  (odds.length > 1) ? false: true
end

