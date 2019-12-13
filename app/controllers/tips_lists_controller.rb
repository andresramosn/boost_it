class TipsListsController < ApplicationController
  def new
    # grab list
    @list = List.find(params[:list_id])
    @list_tip = ListTip.new
    # give selection of all lists
    # pass as hidden field to create
  end

  def create
    @tip = Tip.find_or_create_by(title: params[:tip][:title])
    @tip.address = params[:tip][:address]
    @tip.review = params[:tip][:review]
    @tip.category = params[:tip][:category]
    @tip.photo = params[:tip][:photo]
    @tip.user = current_user
    @tip.save!
    @tip_list = ListTip.new
    @tip_list.tip = @tip
    @tip_list.list = List.find(params[:list_id])
    @list = List.find(params[:list_id])
    @tip_list.save!
    redirect_to list_path(@list)
  end

  def show
    # @list_tip = ListTip.geocoded # returns Tip with coordinates
    @list_tip = ListTip.find(params[:id])
    # @markers = [{
      # lat: @list_tip.latitude,
      # lng: @list_tip.longitude
    # }]
  end



 #    @tip = Tip.new(tip_params)
 #    @tip.user = current_user
 #    @list = List.find(params[:list_id])

 #    if @tip.save
 #      TipsLists.create(tip_id: @tip.id, list_id: @list.id)
 #      redirect_to lists_path # redirecting to lists
 #    else
 #      render :new
 #    end
 #  end



 # @restaurant = Restaurant.find(params[:restaurant_id])
 #    @review = Review.new(review_params)
 #    @review.restaurant = @restaurant
 #    if @review.save
 #    redirect_to restaurant_path(@restaurant)
 #    else
 #      render :new
 #    end

  #     private

  # def list_tip_params
  #   params.require(:tip_list).permit(:rating, :review, :category, :title, :address)
  # end

  end
