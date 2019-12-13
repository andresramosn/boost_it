class TipsController < ApplicationController

  def new
    @tip = Tip.new
    @lists = current_user.lists.map { |instance| instance.name } # esta convirtiendo las instances en nada mas el nombre, con el fin de usarlos en el form select
    # (&:name)
  end

  # See if list params is present
  # if list present create lists recommendations on form
  # if not just create tip without list

  def create
    @tip = Tip.new(tip_params)
    raise
    @tip.user = current_user
    if params[:list_id].present?
      @list = List.find(params[:list_id])
        if @tip.save
          redirect_to tip_path(@tip) # redirecting to lists
        else
          render :new
        end
    else
      if @tip.save
        redirect_to tip_path(@tip) # redirecting to lists
      else
        render :new
      end
    end
  end

  def index
    @tips = Tip.all
    @my_tips = Tip.where(user_id: current_user.id)
  end

  def show
    @tip = Tip.geocoded # returns Tip with coordinates
    @tip = Tip.find(params[:id])
    @markers = [{
      lat: @tip.latitude,
      lng: @tip.longitude
    }]
  end

  def edit
  end

  def update
  end

  def delete
  end

  private

  def tip_params
    params.require(:tip).permit(:rating, :review, :category, :title, :address, :photo, :photo_cache)
  end
end
