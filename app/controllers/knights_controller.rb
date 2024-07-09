class KnightsController < ApplicationController
  def index
    @knights = Knight.order(created_at: :desc)
  end

  def new
    @knight = Knight.new
  end

  def create
    @knight = Knight.new(knight_params)
    if @knight.save
      redirect_to knights_path
    else
      render :new
    end
  end

  def show
    @knight = Knight.find(params[:id])
  end

  def edit
  end


  private

  def knight_params
    params.require(:knight).permit(:name, :is_active, :number_of_quests)
  end

end
