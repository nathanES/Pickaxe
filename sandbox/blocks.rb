some_array = [1,2,3,4,5]
some_array.each { |value| puts value * 3 }

sum = 0
other_array = [9,20,14,10,30]
other_array.each do |value|
    sum += value
    puts value/sum
end
# there is no difference between {} and do end except the precedence of the block
# {} has higher precedence than do end
# {} is used for single line blocks
# do end is used for multi line blocks
# {} is used when you want to use the result of the block
# do end is used when you want to use the result of the last line of the block

sum = 0
[1,2,3,4,5].each do |value|
    square = value * value
    sum += square
end
puts sum # => 30
# blocks has access to the variable scope outside the block 
# and doesn't, by default, create a new variables with existing names but you can override this behavior

thing = "some shape"
# the block creates a new variable with the same name as the variable outside the block 
# and doesn't modify the variable outside the block
[1,2].each { |thing| puts thing} # => 1 2
puts thing # => some shape


square = "some shape"
sum = 0
[1,2,3,4].each do |value; square|
    square = value * value
    sum += square
end
puts sum # => 30
puts square # => some shape

[1,2].each { |value| puts value} # => 1 2
# you can replace |value| with _1 and so on for the other arguments, it will take the positional argument to the block
# but we recommend to use this only for one arguments blocks
[1,2].each { puts _1} # => 1 2