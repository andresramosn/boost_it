class TipsController < ApplicationController

  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def new
    @tip = Tip.new
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.user = current_user
    if @tip.save
      redirect_to tip_path(@tip) # redirecting to show
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def tip_params
    params.require(:tip).permit(:rating, :review, :category, :title, :address)
  end
end
