# returns their intersection(common element) in a new array.

def intersection(list1, list2)

    new_array = []
    hash = {}

    list1.each do |value|
        hash[value] = true
    end

    list2.each do |value|
        if hash[value] == true
            new_array << value
        end
    end
    return new_array
end
