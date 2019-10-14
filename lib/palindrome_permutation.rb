# returns true if the letters could be re-arranged into a palindrome
# aka, if all but one letter appears twice
def palindrome_permutation?(string)
  # create hash
  hash = {}
  # set output to true
  output = true
  
  # for each string character,
  string.each_char do |char|
    # put it into the hash
    # the number of times it apppears
    if hash.has_key?(char)
      hash[char] += 1
    else
      hash[char] = 1
    end
  end
  
  # make a boolean for odds
  odd = false
  
  # for each string character,
  string.each_char do |char2|
    # if it appears in the hash
    # an odd number of times
    if hash[char2].odd?
      # and odd is false
      # set odd to true
      if !odd
        odd = true
      else
        # if odd is already true,
        # set output to false
        # b/c there are multiple odds
        output = false
      end
    end
  end
  
  # return output
  return output
end
