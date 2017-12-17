class BooksController < ApplicationController
def index
   #@books = Book.order("title")
  if params[:shelf_id]
    @shelf = shelf.find (params[:shelf.id])
    @books = @shelf.books.order("title")
  else
    @books = Book.order("title")
  end
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
       #redirect_to @book, notice: "update"
       if @book.save
         redirect_to @book, notice : "update."
       else
         render "edit"
       end
end

end
