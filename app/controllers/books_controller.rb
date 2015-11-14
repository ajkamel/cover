class BooksController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @books = Book.order(sort_column => sort_direction).page(params[:page])
    @books = @books.by_genre(params[:genre_id]) if params[:genre_id].present?
  end

  def show
    @book = Book.
      includes(reviews: :user).
      find(params[:id])
  end

  private

  def sort_column
    Book.column_names.include?(params[:sort]) ? params[:sort] : 'published_on'
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : 'desc'
  end
end
