
def permutations?(string1, string2)
  hash = {}
  return false if string2.length != string1.length

  string1.each_char do |letter|
    hash[letter] ? hash[letter] += 1 : hash[letter] = 1
  end

  string2.each_char do |letter|
    if hash[letter] == 0 || hash[letter] == nil
      return false
    else
      hash[letter] -= 1
    end
  end
  return true
end
