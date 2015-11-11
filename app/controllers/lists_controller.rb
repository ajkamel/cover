class ListsController < ApplicationController
  def index
    @lists = List.includes(:books)
  end

  def show
    @list = List.find(params[:id])
  end
end
