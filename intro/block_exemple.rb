#!/usr/bin/env ruby

def call_block
    puts "Start of method"
    yield
    yield
    puts "End of method"
end
call_block do
    puts "In the block"
end
# Start of method
# In the block
# In the block
# End of method

def who_say_what
    yield("Dave", "hello")
    yield("Andy", "goodbye")
end
who_say_what do |person, phrase|
    puts "#{person} say #{phrase}"
end

["cat", "dog", "horse"].each do |name|
    print name, " "
end
5.times do
    print "*"
end
3.upto(6) do |i|
    print i
end
("a".."e").each do |char|
    print char
end
("a".."e").each do
    print _1
end