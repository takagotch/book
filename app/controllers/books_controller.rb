class BooksController < ApplicationController
def index
	@books = Book.order("title")
end

def show
	@books = Book.find(params[:id])
end

def create
	@book = Book.new(params[:book])
end

def update
	@book = Member.find(params[:id])
	@book.save
	redirect_to @book, notice: "update"
end

end
