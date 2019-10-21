# The time complexity of this algorithm is O(n + m) where n is the length of the string and m is the length of string_values created from the characters of the string (in the worst case, all characters would be saved in the hash table as separate values). This reduces to O(n). The space complexity is O(1 + n) where n is the length the string_values and 1 is added for the odd_numbered_letters_count constant. The space complexity also reduces to O(n).

def palindrome_permutation?(string)
  string_values = {}

  string.each_char do |c|
    if string_values[c]
      string_values[c] += 1 
    else 
      string_values[c] = 1
    end
  end

  odd_numbered_letters_count = 0

  string_values.each do |key, value|
    odd_numbered_letters_count += 1 if value % 2 == 1
  end

  return odd_numbered_letters_count <= 1
end
