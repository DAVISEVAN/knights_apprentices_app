class KnightsController < ApplicationController
  def index
    @knights = Knight.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
