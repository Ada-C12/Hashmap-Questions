# Time complexity: O(n) 
# Space complexity: O(n)

def intersection(list1, list2)
  if list1.nil? ||
    list2.nil? ||
    list1.empty? ||
    list2.empty?
    return []
  else
    checking_hash = {}
    intersection = []
    list1.each do |num|
      checking_hash[num] = true
    end
    list2.each do |num|
      if checking_hash[num] == true
        intersection << num
      end
    end
    return intersection
  end
end

