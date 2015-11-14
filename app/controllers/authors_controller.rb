class AuthorsController < ApplicationController
  def index
    @authors = author_scope
  end

  def show
    @author = author_scope.find(params[:id])
  end

  private

  def author_scope
    Author.includes(:books)
  end
end
