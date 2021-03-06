class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user

    if @list.save
      redirect_to list_path(@list) # redirecting to index
    else
      render :new
    end
  end

  def index
    @lists = List.where(user_id: current_user.id)
    @shares = Share.where(user_id: current_user.id)
  end

  def show
    @list = List.find(params[:id])
    @list_tips = ListTip.where(list_id: @list.id)
    @markers = @list_tips.map do |list_tip|
      {
        lat: list_tip.tip.latitude,
        lng: list_tip.tip.longitude
      }
    end
    @list_tips = ListTip.where(list_id: @list.id)

  end

  def edit
  end

  def update
  end

  def delete
  end

private

  def list_params
    params.require(:list).permit(:name)
  end
end
