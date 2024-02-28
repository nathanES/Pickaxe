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