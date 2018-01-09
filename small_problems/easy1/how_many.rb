def count_occurrences(items)
  hash = {}
  uniq_items = items.uniq
  uniq_items.each do |item|
    hash[item] = items.count(item)

  end
  hash.each { |k,v| puts "#{k} => #{v}" }

end




vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

count_occurrences(vehicles)