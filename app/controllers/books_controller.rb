class BooksController < ApplicationController
  def index
    @books = Book.page(params[:page])
    @books = @books.by_genre(params[:genre_id]) if params[:genre_id].present?
  end

  def show
    @book = Book.
      includes(reviews: :user).
      find(params[:id])
  end
end
