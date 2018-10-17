class BooksController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @books = Book.all
    # @author = Author.find_by(id: author_id).name
  end

  def show
    @book = Book.find(params[:id])
  end
end
