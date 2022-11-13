class BookController < ApplicationController
  def new
    @book = Book.new
  end
  
  def create
    @book = Book.new(book_paramas)
    @book.user_id = current_user.id)
    @book.save
    redirect_to book_path
  end

  def show
  end

  def index
  end

  def edit
  end
  
  
  private
  
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
  
end
