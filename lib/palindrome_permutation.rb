def palindrome_permutation?(string)
  letter_tracker = add_letters_to_hash(string)
  odd_occurrences = 0

  letter_tracker.each do |key, value|
    if letter_tracker[key] % 2 != 0
      odd_occurrences += 1
    end
  end

  if odd_occurrences <= 1
    return true
  else 
    return false
  end
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