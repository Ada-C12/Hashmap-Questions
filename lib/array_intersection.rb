def intersection(list1, list2)
  list2.select &list1.to_set.method(:include?)
end
