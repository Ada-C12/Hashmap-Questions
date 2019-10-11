
def palindrome_permutation?(string)
  hash_table = {}

  string.each_char do |c|
    hash_table[c] ? hash_table[c] += 1 : hash_table[c] = 1
  end

  odd_numbered_letters = 0

  hash_table.each do |key, value|
    odd_numbered_letters += 1 if value % 2 == 1
  end

  return odd_numbered_letters <= 1
end
