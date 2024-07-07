class ApprenticesController < ApplicationController
  def index
    @apprentices = Apprentice.all
  end

  def new
  end

  def show
    @apprentice = Apprentice.find(params[:id])
  end

  def edit
  end

  def index_for_knight
    @knight = Knight.find(params[:knight_id])
    @apprentices = @knight.apprentices
  end
end
