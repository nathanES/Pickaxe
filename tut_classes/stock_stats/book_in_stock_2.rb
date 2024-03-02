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
book = BookInStock.new("isbn1", 3)
puts book # puts convertit en string l'object.