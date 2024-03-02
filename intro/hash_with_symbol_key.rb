#!/usr/bin/env ruby

instrument_section = {
    :cello => "string",
    :clarinet => "woodwind"
}
puts instrument_section[:cello]
puts instrument_section["cello"] #string is not the same as symbol

#Shortcut syntax when using symbols "name: value"
instrument_section ={
    cello: "string",
    clarinet: "woodwind",
    oboe: "woodwind"
}
puts "An oboe is a #{instrument_section[:oboe] instrument}"
