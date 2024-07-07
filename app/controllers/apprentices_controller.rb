class ApprenticesController < ApplicationController
  def index
    @apprentices = Apprentice.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
