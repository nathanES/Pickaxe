class BookInStock
    #it's a shortcut from book_in_stock_3
    attr_reader :isbn, :price #it only create the method to acces @isbn and @price, it doesn't declare instance of variables
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end
b1 = BookInStock.new("isbn1", 3)
puts "ISBN #{b1.isbn}"
puts "Price #{b1.price}"