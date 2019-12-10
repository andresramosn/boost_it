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
  end

  def edit
  end

  def update
  end

  def delete
  end

  # private

  # def tip_params
  #   params.require(:tip).permit(:rating, :review, :title, :category, :address, :user_id)
  # end
end
