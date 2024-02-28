#!/usr/bin/env ruby

today = Time.now

if today.saturday?
    puts "Do chores around the house"
elsif today.sunday?
    puts "relax"
else 
    puts "Go to work"
end
# Ruby treats nil as a false value in condition 


# For single line if you can use the if at the end of the line like that
puts "Danger, will robinson" if today.wednesday?


# you can use the same thing with while
square = 4
square = square * square while square < 1000
puts "square : #{square}"

# the if statement is principaly used for guardclause like that
#return nil if user.nil?



# regular expression
# they are integreted to ruby
# /pattern/
/|d|d:|d|d:|d|d/ #match a time such as 12:34:56
/Ruby.*Rust/ #Ruby, zero or more other chars, then Rust
/Ruby Rust/ #Ruby, exactly one space, and Rust
/Ruby *Rust/ #Ruby, zero or more spaces, and Rust
/Ruby +Rust/ #Ruby, one or more spaces, and Rust
/Ruby|s+Rust/ #Ruby, one or more whitespace characters, then Rust
/Java (Ruby|Rust)/ #Java, a space, and either Ruby or Rust


#It's use like that
line = "Java Ruby"
puts "It's a match" if line.match?(/Java (Ruby|Rust)/)
puts "It's not a match" unless line.match?(/Ruby +Rust/)
newline = line.sub(/Python/, "Ruby") #replace first "Python" with "Ruby"
newerline = line.gsub(/Python/, "Ruby")#replace every "Python" with "Ruby"