class BooksController < ApplicationController
  
  def edit
  end
  
  def index
    @book = Book.new
    @books = Book.all
  end
  
  def create
    @book = Book.new(book_params)
    @book.save
    redirect_to books_path
  end
  
  def show
    @book = Book.find(params[:])
  end
  
  private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
