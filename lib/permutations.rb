def permutations?(string_1, string_2)
  string_hash_1 = add_letters_to_hash(string_1)
  string_hash_2 = add_letters_to_hash(string_2)

  string_hash_1.each do |key, value|
    if string_hash_2.key?(key) == false
      return false
    end

    if string_hash_1[key] != string_hash_2[key]
      return false
    end
  end 
  return true
end

def add_letters_to_hash(string)
  letter_counts = {}
  string.chars.each do |letter|
    if letter_counts.key?(letter)
      letter_counts[letter] += 1
    else 
      letter_counts[letter] = 1
    end
  end
  return letter_counts
end