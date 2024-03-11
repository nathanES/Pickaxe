#each iterator
[1,3,5,7,9].each { |i| puts i } # => 1 3 5 7 9

#Find iterator
class Array
    def find 
        each do |value|
            return value if yield(value)
        end
        nil
    end
end
[1,3,5,7,9].find { |number| number * number > 30 } # => 7

#map iterator
class Array
    def map
        result = []
        each do |value|
            result << yield(value)
        end
        result
    end
end
print ["H","A","L"].map { |x| x.succ } # => ["I", "B", "M"]

f=File.open("testfile")
f.each do |line|
    puts "The line is: #{line}"
end
f.close
# you can add index to the block to track the number of time a block is called
f1=File.open("testfile")
f1.each.with_index do |line, index|
    puts "Line #{index} is: #{line}"
end
f1.close
#it work for every iterator

#reduce iterator or inject iterator
[1,3,5,7].reduce(0) { |sum, element| sum + element } # => 16 #put the result of the sum to the sum variable for the next iteration
[1,3,5,7].reduce(1) { |product, element| product * element } # => 105
# if no parameter in reduce it use the first argument of the array so it would work for this example

#you can make it shorter
[1,3,5,7].reduce(:+) # => 16
[1,3,5,7].reduce(:*) # => 105
#or even shorter by using sum 
[1,3,5,7].sum # => 16
# product is not a method to multiply all the elements of an array
# it return every possible combinaision of 2 arrays
[1,3,5,7].product([2,4,6])  # => [[1, 2], [1, 4], [1, 6], 
                            # [3, 2], [3, 4], [3, 6],
                            # [5, 2], [5, 4], [5, 6]
                            # [7, 2], [7, 4], [7, 6]]  

