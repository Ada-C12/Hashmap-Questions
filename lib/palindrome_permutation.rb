
def palindrome_permutation?(string)
  hash = {}
  string.each_char do |char|
    if hash[char] == nil
      hash[char] = 1
    else
      hash[char] += 1
    end
  end

  results = []
  string.each_char do |char|
    if hash[char] % 2 == 1
      results << char
    end
  end
  return results.length <= 1
end
