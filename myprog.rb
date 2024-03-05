#!/usr/bin/env ruby
#Array
a=[1, "cat", 3.14] # can have multiple type in it
a[2] = nil
puts "The array #{a.inspect}"

#Hashes
instrument_section = {
  "cello" => "string",
  "clarinet" => "woodwind",
  "drum" => "percussion",
  "oboe" => "woodwind",
  "trumpet" => "brass",
  "violin" => "string"
}
# the order of the keys in the hash is stable and will
#   always math the order in wich the keys were added to the hash
puts instrument_section["clarinet"]
# by default the default value is nil
puts instrument_section["abs"]
hashe2 = Hash.new(0) # initialize an hashe with the default value 0 


#Symbols
# It's like a special stings that are immutable, are only created once and are fast to look up
# Symbols are meant to be used as keys and identifiers while strings are meant to be used for data
:hello
# The value for a symbol is equivalent to its name
def walk(direction)
  if direction == :north
    #...
  end
end
walk(:north)

#Variables
person1 = "Tim"
person2 = person1
person1[0] = "J" # In Ruby when you assign an object to a variable you will assign
# the reference to the object so if you change the first object you will change the second object too 
puts person1
puts person2
## to avoid that
person3 = "Tim"
person4 = person3.dup # create a new string with identical contents
person3[0] = "J"
puts person3
puts person4

person5 = "Tim"
person6 = person5
person5.freeze # prevent any change. Will raise RuntimeError exception if someone try to modify 
person6[0] = "J"
puts person5
puts person6
#Numbers and symbols are frozen