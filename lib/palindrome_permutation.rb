
def palindrome_permutation?(string)
  hash = {}
  odd_count = 0

  string.each_char do |char|
    if hash[char]
      if hash[char] == "odd"
        hash[char] = "even"
        odd_count -= 1
      elsif hash[char] == "even"
        hash[char] = "odd"
        odd_count += 1
      end
    else
      hash[char] = "odd"
      odd_count += 1
    end
  end

  return odd_count > 1 ? false : true
end
