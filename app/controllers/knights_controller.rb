class KnightsController < ApplicationController
  def index
    @knights = Knight.order(created_at: :desc)
  end

  def new
  end

  def show
    @knight = Knight.find(params[:id])
  end

  def edit
  end
end
