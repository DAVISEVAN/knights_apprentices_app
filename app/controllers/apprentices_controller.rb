class ApprenticesController < ApplicationController
  def index
    @apprentices = Apprentice.where(is_knighted: true)
  end

  def new
    @knight = Knight.find(params[:knight_id])
    @apprentiece = @knight.apprentices.build
  end

  def create
    @knight = Knight.find(params[:knight_id])
    @apprentice = @knight.apprentices.build(apprentice_params)
    if @apprentice.save
      redirect_to knight_apprentices_path(@knight)
    else
      render :new
    end
  end

  def show
    @apprentice = Apprentice.find(params[:id])
  end

  def edit
    @apprentice = Apprentice.find(params[:id])
  end

  def index_for_knight
    @knight = Knight.find(params[:knight_id])
    @apprentices = @knight.apprentices
  end

  def update
    @apprentice = Apprentice.find(params[:id])
    if @apprentice.update(apprentice_params)
      redirect_to apprentice_path(@apprentice)
    else
      render :edit
    end
  end

  private

  def apprentice_params
    params.require(:apprentice).permit(:name, :is_knighted, :age, :knight_id)
  end
end
