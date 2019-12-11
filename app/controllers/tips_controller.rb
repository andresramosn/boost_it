class TipsController < ApplicationController

  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.geocoded #returns Tip with coordinates
    @tip = Tip.find(params[:id])
    @markers = [{
      lat: @tip.latitude,
      lng: @tip.longitude
    }]
  end

  def new
    @tip = Tip.new
    @list = List.find(params[:list_id])
  end

  def create
    @tip = Tip.new(tip_params)
    @tip.user = current_user
    @list = List.find(params[:list_id])
    if @tip.save
      ListTip.create(tip_id: @tip.id, list_id: @list.id)
      redirect_to lists_path # redirecting to lists
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
