# returns true if one string is a permutation ("hello", "ehllo")of the other
def permutations?(string1, string2)
    if string1.length == 0 && string2.length == 0
        return true
    end
  
    string1_hash = {}
    string1_arr = string1.split("")

    string1_arr.each do | char |
        if string1_hash[char]
            string1_hash[char] += 1
        else
            string1_hash[char] = 1
        end
    end

    i = 0
    while i < string2.length
        char = string2[i]
        if string1_hash[char]
            string1_hash[char] -= 1
                if string1_hash[char] == 0
                string1_hash.delete(char)
                end
        end
        i += 1
    end
    return string1_hash.length == 0
end
  # puts permutations?("hello", "ehllo")
  # puts permutations?("pasta", "atsap")
  # puts permutations?("pizza", "pasta")
  # puts permutations?("pizza", "piza")