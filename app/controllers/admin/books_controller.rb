class Admin::BooksController < ApplicationController 
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
    @authors = Author.all
  end

  def create
    @book = Book.new(book_params)
    @book.bookcover.attach(params[:book][:bookcover])
    
    if @book.save
      flash[:notice] = "Book successfully added"
      redirect_to admin_book_path(@book.id)
    else
      render 'admin/books/new'
    end  
  end

  private
    def book_params
      params.require(:book).permit(:title, :content, :price, :author_id, :bookcover, :file)
    end
end
