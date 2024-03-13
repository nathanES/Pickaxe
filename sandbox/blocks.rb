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


# you can use block for transactions
class File
    def self.open_and_process(*args)
        f=File.open(*args)
        yield f
        f.close
    end
end
File.open_and_process("testfile", "r") do |file|
    while line = file.gets
        puts line
    end
end
#it's usefull because you want to make sure that the file is closed after the block is executed

# you can check if a block is given to a method
class File
    def self.my_open(*args)
        file = File.new(*args)
        return file unless block_given? # return the file if no block is given
        result = yield file
        file.close
        result
    end
end

# block as object

class ProcExample
    def pass_in_block(&action) # & is used to convert the block to a proc
        @stored_proc = action
    end
    def use_proc(parameter)
        @stored_proc.call(parameter
    end
end
eg = ProcExample.new
eg.pass_in_block { |param| puts "The parameter is #{param}"}
eg.use_proc(99) # => The parameter is 99

#you can use something like this 
def create_block_object(&block)
    block # return the block as a proc
end
bo = create_block_object { |param| puts "You called me with #{param}"}
bo.call(99) # => You called me with 99
bo.call("cat") # => You called me with cat

# the same thing can be done with "stabby lambda" syntax
bo1 = ->(param) { puts "You called me with #{param}"}
bo1.call(99) # => You called me with 99
bo1.call("cat") # => You called me with cat

# you can also use the lambda syntax
bo2 = lambda { |param| puts "You called me with #{param}"}
bo2.call(99) # => You called me with 99
bo2.call("cat") # => You called me with cat

# you can also use the Kernel method called proc
bo3 = proc { |param| puts "You called me with #{param}"}
bo3.call(99) # => You called me with 99
bo3.call("cat") # => You called me with cat

# you can also use the Proc.new method => but it's not recommended !
bo4 = Proc.new { |param| puts "You called me with #{param}"}
bo4.call(99) # => You called me with 99
bo4.call("cat") # => You called me with cat

# slight difference between lambda and proc
# lambda : return error if called with the wrong number of arguments
# proc : truncate extra arguments or assign nil to missing arguments
# proc : return inside proc will return from the method that called the proc
# lambda : return inside lambda will not
# TODO to test