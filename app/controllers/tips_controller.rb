class TipsController < ApplicationController

  def new
    @tip = Tip.new
    @client = GooglePlaces::Client.new(ENV["GOOGLE_API"])

    @lists = current_user.lists.map { |instance| instance.name } # esta convirtiendo las instances en nada mas el nombre, con el fin de usarlos en el form select
    # (&:name)
    respond_to do |format|
      format.js {
        @place = params.keys.first
        @spot = @client.spots_by_query(@place).first
        @photo_url = @spot.photos[0].fetch_url(400)
      }
      format.html
    end
  end

  # See if list params is present
  # if list present create lists recommendations on form
  # if not just create tip without list
  def all_tips
    if params[:filter] == nil
      @tips = Tip.all
    else
      @tips = Tip.where(category: params[:filter])
    end
  end

  def add_to_list
    @tip = Tip.new
    @old_tip = Tip.find(params[:format])
    @lists = current_user.lists.map { |instance| instance.name }
  end

  def create
    if params[:old_tip].nil?
      @tip = Tip.new(tip_params)
      @tip.user = current_user
      list = List.find_by(name: params[:lists])
      if params[:lists].present?
        if @tip.save
          ListTip.create(tip_id: @tip.id, list_id: list.id)
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
    else
      @tip = Tip.find(params[:old_tip]).dup
      @tip.review = tip_params[:review]
      @tip.user_id = current_user.id
      list = List.find_by(name: params[:lists])
      if params[:lists].present?
        if @tip.save
          ListTip.create(tip_id: @tip.id, list_id: list.id)
            redirect_to get_inspired_path({tip: @tip.id, list: params[:lists]}) # redirecting to lists
        else
        end
      else
        if @tip.save
          redirect_to get_inspired_path(tip: @tip.id) # redirecting to lists
        else
        end
      end
    end
  end

  def index
    @tips = Tip.all
    @my_tips = Tip.where(user_id: current_user.id)
    @markers = @tips.map do |tip|
      {
        lat: tip.latitude,
        lng: tip.longitude
      }
    end
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
    params.require(:tip).permit(:rating, :review, :category, :title, :address, :photo, :photo_cache, :lists, :opening_hours, :price_level, :website, :google_pic)
  end
end
