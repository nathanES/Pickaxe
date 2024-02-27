#!/usr/bin/env ruby
puts "Hello, Ruby Programmer"
puts "It is now #{Time.now}"

def say_hello_goodbye(name)
  "I don't know why you say goodbye,  #{name.capitalize}, \nI say hello"
end

puts say_hello_goodbye("John")
puts say_hello_goodbye("Paul")