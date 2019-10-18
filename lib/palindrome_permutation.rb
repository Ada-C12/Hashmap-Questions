# returns true if the letters could be re-arranged into a palindrome.

def palindrome_permutation?(string)
    string_hash = {}
    string_arr = string.split("")

    string_arr.each do | char |
        if string_hash[char]
            string_hash[char] += 1
        else
            string_hash[char] = 1
        end
    end

    odd_counts = 0 
    string_hash.each do |char, count| 
        if count.odd?
            odd_counts += 1 
        end 
    end 

    if odd_counts <= 1 
        return true 
    else 
        return false 
    end 
end	
