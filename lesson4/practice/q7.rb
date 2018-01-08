statement = "The Flintstones Rock"

hash = {}

statement.downcase!.split('').each do |x|
  hash[x] = statement.count(x)
end

hash.delete_if { |k, v| k == ' ' }
p hash