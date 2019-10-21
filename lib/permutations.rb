
def permutations?(string1, string2)
  permutation_hash = {}

  string1.each_char do |c|
    if (permutation_hash.has_key?(c))
      permutation_hash[c] += 1
    else
      permutation_hash[c] = 1
    end
  end

  string2.each_char do |c|
    if (!permutation_hash.has_key?(c) || permutation_hash[c] == 0)
      return false
    else
      permutation_hash[c] -= 1
    end
  end

  permutation_hash.each_value do |value|
    if value > 0
      return false
    end
  end

  return true
end
