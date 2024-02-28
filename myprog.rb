#!/usr/bin/env ruby
puts "Hello, Ruby Programmer"
puts "It is now #{Time.now}"

def say_hello_goodbye(name)
  "I don't know why you say goodbye,  #{name.capitalize}, \nI say hello"
end

puts say_hello_goodbye("John")
puts say_hello_goodbye("Paul")

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
puts instrument_section["clarinet"]