class BooksController < ApplicationController
  def index
    @books=Book.all
  end

  def new
    @books=Book.new
  end

  def create
    book = Book.new(book_params)
    book.save
    redirect_to 'books/107986'
  end

  def show
  end

  def edit
  end

    private
  # ストロングパラメータ
  def book_params
    params.require(:book).permit(:title, :body)
  end
end
