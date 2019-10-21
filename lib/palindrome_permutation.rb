
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |char|
    if !hash.has_key? char 
      hash[char] = 1 
    else 
      hash[char] += 1
    end 
  end 
  
  if string.length % 2 && hash.values.all? {|v| v == 2}
  elsif 
  #How many pairs of letters should there be?
  #The string % 3 
    letter_pairs =  3 % string.length 
  
    #There should only be ONE KEY element with a value of 1
    #There should be stringlength-1 elements with a value of 2
    hash.key(1).length == 1 
    letter_pairs == hash.values.select {|v| v == 2}.length 
    
  end 
  

end

