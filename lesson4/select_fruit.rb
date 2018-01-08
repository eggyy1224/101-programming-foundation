produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

def select_fruit(hash)
  counter = 0
  hash_keys = hash.keys
  return_hash = {}
  loop do
    if hash[hash_keys[counter]] == 'Fruit'
      return_hash[hash_keys[counter]] = hash[hash_keys[counter]]
    end
    counter += 1
    break if counter == hash.size
  end
  return_hash
end

p select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}