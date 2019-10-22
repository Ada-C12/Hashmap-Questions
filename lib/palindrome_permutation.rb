
def palindrome_permutation?(string)
  if string.nil?
    return false
  elsif string.empty?
    return true
  else
    hash = Hash.new(0)
    string.each_char do |char|
      hash[char] += 1
    end
    non_palindromable_letter_booleans = 0
    hash.values.each do |count|
      non_palindromable_letter_booleans += 1 if count % 2 != 0
    end
    if non_palindromable_letter_booleans > 1
      return false
    else 
      return true
    end
  end
end

