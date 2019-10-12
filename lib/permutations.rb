def permutations?(string1, string2)
  h = Hash.new { |h, k| h[k] = 0 }
  
  string1.each_char { |c| h[c] += 1 }
  string2.each_char { |c| h[c] -= 1 }
  
  h.values.all?(&:zero?)
end
