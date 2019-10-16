def permutations?(string1, string2)
  hash = {}
  string_permutation = true

  if string1.length != string2.length
    string_permutation = false
  else
      string1.each_char do |character|
        hash.store(character, true)
      end
      
      string2.each_char do |character|
        if hash[character] == nil
          string_permutation = false
        end
      end
  end
  return string_permutation
end

#Time complexity: O(n)
#Space complexity: O(n)