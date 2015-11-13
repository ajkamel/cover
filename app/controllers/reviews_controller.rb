class ReviewsController < ApplicationController
  before_action :require_login
  before_action :set_book

  def new
    @review = @book.reviews.build
  end

  def create
    @review = @book.reviews.build(review_params)
    if @review.save
      redirect_to book_path(@book), notice: 'Thanks for adding your review'
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:body, :rating).merge(user: current_user)
  end

  def set_book
    @book = Book.find(params[:book_id])
  end
end
