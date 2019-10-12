def intersection(list1, list2)
  h = {}
  list1.each { |x| h[x] = true }
  list2.select(&h.to_proc)
end
