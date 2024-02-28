#!/usr/bin/env ruby

instrument_section = {
    :cello => "string",
    :clarinet => "woodwind"
}
puts instrument_section[:cello]
puts instrument_section["cello"] #string is not the same as symbol