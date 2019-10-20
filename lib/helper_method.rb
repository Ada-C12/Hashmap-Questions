def string_to_hash(string)
  hash = {}
  string.each_char do |char|
    if hash.key?(:"#{char}") == false
      hash.merge!("#{char}": 1 )
    else
      hash[:"#{char}"] += 1
    end
  end
  return hash
end