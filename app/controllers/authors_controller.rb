class AuthorsController < ApplicationController
  def index
    @authors = Author.includes(:books)
  end
end
