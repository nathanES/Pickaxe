#!/usr/bin/env ruby
#Shortcut syntax when using symbols "name: value"
instrument_section ={
    cello: "string",
    clarinet: "woodwind",
    oboe: "woodwind"
}
puts "An oboe is a #{instrument_section[:oboe] instrument}"
