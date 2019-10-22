
def palindrome_permutation?(string)
  hash = {}
  array = string.split ("")
  odd_num = 0

  array.each do |char|
    if hash[char]
       hash[char] += 1
    else
      hash[char] = 1
    end
  end
  hash.each do |char, value|
    if value %2 != 0
    odd_num += 1
    end
  end 
   return odd_num <= 1 
end