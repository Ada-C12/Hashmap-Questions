
def palindrome_permutation?(string)
  permutation_hash = {}

  string.each_char do |c|
    if (permutation_hash.has_key?(c))
      permutation_hash[c] += 1
    else
      permutation_hash[c] = 1
    end
  end

  has_found_odd = false
  permutation_hash.each_value do |value|
    if value % 2 != 0 && has_found_odd
      return false
    elsif value % 2 != 0
      has_found_odd = true
    end
  end

  return true
end
