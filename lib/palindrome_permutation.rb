
def palindrome_permutation?(string)
  hash = {}
  permutable_palindrome = false

  string.each_char do |element|
    if hash[element] == nil
      hash.store(element, true)
    else
      hash.delete(element)
    end 
  end

  if hash == {} && string.length%2 == 0
    permutable_palindrome = true
  elsif string.length%2 != 0 && hash.keys.count == 1
    permutable_palindrome = true
  end 
  return permutable_palindrome
end

#Time complexity: O(n)
#Space complexity: O(n): worst scenario the maximum number of keys will be all letters of alphabet.

  
