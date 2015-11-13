class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page])
  end

  def show
    @book = Book.
      includes(reviews: :user).
      find(params[:id])
  end
end
