class TipsListsController < ApplicationController
  def new
    # grab list
    @list = List.find(params[:list_id])
    @list_tip = ListTip.new
    # give selection of all lists
    # pass as hidden field to create
  end

  def create
    #define tip +=> tip.findby name params
    # if found = @tip
    # if nil  @tip =  tip.create
    @list_tip = ListTip.new
    # (list_tip_params)
    @list_tip.list = @list
    @list_tip.tip = @tip
    raise
      if ListTip.create
        redirect_to list_tips_list_path(list_id)
      else
        render :new
    end
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
