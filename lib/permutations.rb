# returns true if one string is a permutation of the other
# if each contain only the same letters in the same quantities as the other.
def permutations?(string1, string2)
  # create a hash
  hash = {}
  # set output to true
  output = true
  
  # for each string1 character,
  string1.each_char do |char1|
    # make it a key in the hash
    # and set its value to the number of times it appears
    if hash.has_key?(char1)
      hash[char1] += 1
    else
      hash[char1] = 1
    end
  end
  
  # for each string2 character,
  string2.each_char do |char2|
    # check if it's a key in the hash
    # and that it has a value greater than none
    if hash.has_key?(char2) && hash[char2] > 0
      # if it is, remove one from that hash value
      hash[char2] -= 1
    else
      # otherwise, make output false
      # b/c there is a not-shared letter
      output = false
    end
  end
  
  # for each string1 character
  string1.each_char do |char3|
    # if there is a value in the hash
    # for this character
    if hash.has_key?(char3) && hash[char3] > 0
      # set output to false
      # b/c this char occurred more
      # in string1 than string2
      output = false
    end
  end
  
  # return output boolean
  return output
end
