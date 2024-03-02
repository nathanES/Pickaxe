class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    #surcharge la méthode to_s intégré à tous les objets qui convertit l'objet en string
    def to_s
        "ISBN: #{@isbn}, Price: #{@price}"
    end
end
b1 = BookInStock.new("isbn1", 3)
puts b1 # puts convertit en string l'object.

b2 = BookInStock.new("isbn2", 3.14)
puts b2

b3 = BookInStock.new("isbn3", 5.67)
puts b3