def palindrome_permutation?(string)
  char_string = string.gsub(/[^a-zA-Z0-9\-]/,"").downcase

  hash = {}
  char_string.each_char do |char|
    if hash[char]
      hash[char] += 1
    else
      hash[char] = 1
    end
  end

  odd = 0
  hash.each do |key , value|
    odd += 1 if value % 2 != 0
  end
  
  odd > 1 ? false : true
end


