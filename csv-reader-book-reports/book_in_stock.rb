class BookInStock
	attr_reader :isbn, :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)  # don't use floats to hold prices as they're inexact
	end
end