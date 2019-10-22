
def permutations?(string1, string2)
  if string1.nil? ||
    string2.nil? ||
    string1.length != string2.length
    return false
  elsif string1.empty? &&
    string2.empty?
    return true
  else
    checking_hash = Hash.new(0)
    string1.each_char do |char|
      checking_hash[char] += 1
    end
    string2.each_char do |char|
      if checking_hash[char] += 1
      end
    end
    divisible_by_two = 0
    checking_hash.each do |char, count|
      divisible_by_two += 1 if count % 2 == 0      
    end
    if string1.length - divisible_by_two > 2
      return false
    end
  end
  return true
end
