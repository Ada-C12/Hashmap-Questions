def intersection(list1, list2)
  answers = []
  hash= {}
  list1.each do |num1|
    hash[num1] = "present"
  end

  list2.each do |num2|
    if hash.has_key?(num2)
      answers << num2
    end
  end

  return answers
end
