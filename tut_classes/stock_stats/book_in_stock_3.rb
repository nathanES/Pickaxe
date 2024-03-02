class BookInStock
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    def isbn
        @isbn
    end
    def price
        @price
    end
end
b1 = BookInStock.new("isbn1", 3)
puts "ISBN #{b1.isbn}"
puts "Price #{b1.price}"