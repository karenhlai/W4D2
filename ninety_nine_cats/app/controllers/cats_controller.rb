class CatsController < ApplicationController

  def index
    @cats = Cat.all
    render :index
  end

  def show
    @cat = Cat.find_by(id: params[:id])
    
    if @cat
      render :show
    else
      redirect_to cats_url
    end
  end

  private
  def cats_params
    params.require(:cats).permit(:name, :color, :birth_date)
  end
end
