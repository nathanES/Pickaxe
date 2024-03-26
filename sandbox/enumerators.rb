a = [1,3,"cat"]
enum_a = a.to_enum # you can use a.enum_for too
puts enum_a.next # => "1"
puts enum_a.next # => "3"

h = {dog: "canine", fox: "vulpine"}
enum_h = h.to_enum
puts enum_h.next # => [:dog, "canine"]
puts enum_h.next # => [:fox, "vulpine"]

c = [1,3, "cat"]
enum_c = c.to_enum(:reverse_each)
puts enum_c.next # => "cat"
puts enum_c.next # => 3

d = [1,3, "cat"]
enum_d = d.each # returns an Enumerator when no block is given
puts enum_d.next # => 1
puts enum_d.next # => 3

short_array = [1,2,3].to_enum
long_array = ('a'..'z').to_enum
loop do # loop is like a smart while loop, it stops when the enumerator is done
    puts "#{short_array.next} - #{long_array.next}"
end
# => "1 - a"
# => "2 - b"
# => "3 - c"

## Enumerator are objects
result1 = []
"cat".each_char.each_with_index do |item, index|
    result1 << [item, index]
end
puts result1.inspect # => "[["c", 0], ["a", 1], ["t", 2]]"

result2 = []
"cat".each_char.with_index do |item, index|
    result2 << [item, index]
end
puts result2.inspect # => "[["c", 0], ["a", 1], ["t", 2]]"

result3 = []
"cat".each_char.with_index.map {|item, index| [item, index]} # => "[["c", 0], ["a", 1], ["t", 2]]"

enum = "cat".each_char
puts enum.to_a # => "c" => "a" => "t"

enum_in_threes = (1..10).enum_for(:each_slice, 3)
print enum_in_threes.to_a # => "[[1, 2, 3], [4, 5, 6], [7, 8, 9], [10]]"