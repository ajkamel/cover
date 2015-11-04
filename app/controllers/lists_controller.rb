class ListsController < ApplicationController
  def index
    @lists = List.includes(:books)
  end
end
