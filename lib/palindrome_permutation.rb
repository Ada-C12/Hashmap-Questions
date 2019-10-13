def palindrome_permutation?(string)
  h = Hash.new { |h, k| h[k] = 0 }
  string.each_char { |c| h[c] += 1 }
  h.values.select(&:odd?).count <= 1
end
