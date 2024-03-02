class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end
b1 = BookInStock.new("isbn1", 3)
p b1 # affiche le nom de la classe suivie des paramètres
# "#<BookInStock:0x000000010119e450 @isbn="isbn1", @price=3.0>"
b2 = BookInStock.new("isbn2", 3.14)
p b2

b3 = BookInStock.new("isbn3", 5.67)
p b3

puts b1 #affiche le nom de la classe suivie de son id
# "#<BookInStock:0x000000010119e450>"
puts b2 
puts b3