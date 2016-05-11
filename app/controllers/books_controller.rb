class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    @book = Book.new
  end

  def create
    @book = Book.create book_params
    redirect_to action: "show", id: @book.id
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @book = Book.find(params[:id])
    @book.update(book_params)
    redirect_to action: "show", id: @book.id
  end

  def destroy
    @book = Book.find(params[:id]).destroy
    redirect_to action: "index"
  end

  private

  def book_params
    params.require(:book).permit(:title, :description)
  end
end
