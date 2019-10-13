
def palindrome_permutation?(string)
  hash = {}
  results = []
  string.each_char do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end

  string.each_char do |letter|
    results << letter if hash[letter].odd?
  end

  return results.length <= 1
end
