h = {"dog" => "canine", "cat" => "feline","bear" => "ursine"}
puts h["dog"] # => "canine"
# With symbols
j = { dog: "canine", cat: "feline", bear: "ursine"}

#if you have the something like this, with the same symbol and variable in the right
firstname = "Fred"
lastname = "FlintStone"
user ={firstname: firstname, lastname: lastname}
puts user
# you have a shorter version
user2 = {firstname:, lastname:}
puts user2

#digging
data ={
    mcu: [
        {name: "Iron man", year: 2010, actors:["Robert Downey Jr.", "Gwyneth Paltrow"]}
    ],
    starwars:[
        {name: "A new Hope", year: 1977, actors:["Mark Hamil", "Carrie Fisher"]}
    ]
}
puts data[:mcu][0][:actors][1] # => Gwyneth Paltrow
puts data.dig(:mcu, 0, :actors, 1) # => Gwyneth Paltrow
# 2 advantages of dig, it's simpler and when it's not foud it return nil and the first one throw exception