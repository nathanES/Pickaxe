class BookInStock
    attr_reader :isbn
    attr_accessor :price
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    def price_in_cents
        (price * 100).round
    end
end
book = BookInStock.new("isbn1", 33.80)
puts "Price #{book.price}"
puts "Price #{book.price_in_cents}"