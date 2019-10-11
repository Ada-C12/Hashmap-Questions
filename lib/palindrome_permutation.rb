
def palindrome_permutation?(string)
  hash_table = {}

  string.each_char do |c|
    if hash_table[c]
      hash_table[c] += 1
    else
      hash_table[c] = 1
    end
  end

  odd_numbered_letters = 0

  hash_table.each do |key, value|
    if value % 2 == 1
      odd_numbered_letters += 1
    end
  end

  return odd_numbered_letters <= 1
end
