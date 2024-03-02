class BookInStock
    attr_reader :isbn
    #shortcut from the book_in_stock_5
    attr_accessor :price # it create getter and setter
    def initialize(isbn, price)
        @isbn = isbn
        @price = Float(price)
    end
end
book = BookInStock.new("isbn1", 3)
puts "ISBN #{book.isbn}"
puts "Price #{book.price}"
book.price = book.price * 0.75
puts "New Price #{book.price}"