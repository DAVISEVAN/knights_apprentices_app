class KnightsController < ApplicationController
  def index
    @knights = Knight.all
  end

  def new
  end

  def show
    @knight = Knight.find(params[:id])
  end

  def edit
  end
end
