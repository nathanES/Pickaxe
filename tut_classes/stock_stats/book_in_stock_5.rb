class BookInStock
    attr_reader :isbn, :price 
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
    def price=(new_price)
        @price = new_price
    end
end
book = BookInStock.new("isbn1", 3)
puts "ISBN #{book.isbn}"
puts "Price #{book.price}"
book.price = book.price * 0.75 #invoke the method price=
#Ruby parser ignore the whitespace between the end of name and the = sign
puts "New Price #{book.price}"