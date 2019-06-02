=begin
2 main type
 - array
 - hash

2 other types
 - enumerable
 - range
=end

array = [1,2,3,4,5]
hash = {"language" => "Ruby", "version"=>"2.5.5", "level" => "easy"}
array << 1
array << "2"
array << 3.0
array << 4.0e5
array << "five"

custom_array = Array.new(5,1)
multidim = Array.new(3) { Array.new(3,1)}

print array
puts
print custom_array
puts
print multidim
puts
print hash
print hash["language"]
print hash.has_key?"version"
# enumerables
puts
print array.map {|v| v * 5}
print array[0..5].sort
puts
print array[0..5].select { |v| v.even?}

# range
# for like iteration over a set of elements

puts (1..10).map {|v| v* 10}
puts
print (1...10).map {|v| v * 3}

