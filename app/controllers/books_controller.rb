class BooksController < ApplicationController
def index
	@books = Book.order("title")
end

def show
	@books = Book.find(params[:id])
end

end
