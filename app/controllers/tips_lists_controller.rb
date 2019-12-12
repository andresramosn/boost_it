class TipsListsController < ApplicationController
  def new
    # grab list
    @list = List.find(params[:list_id])
    # give selection of all lists
    # pass as hidden field to create
  end

  def create
    @list = List.find(params[:list_id])
    # grab params of tip
    @tip = Tip.find(params[:tip_id])
    # connect id of tip to list id
    @tip.list = @list
    if @tip.save
      TipsLists.create(tip_id: @tip.id, list_id: @list.id)
      redirect_to tip_path(@tip)
    else
      render :new
    end
  end
end




  #   @tip = Tip.new(tip_params)
  #   @tip.user = current_user
  #   @list = List.find(params[:list_id])

  #   if @tip.save
  #     TipsLists.create(tip_id: @tip.id, list_id: @list.id)
  #     redirect_to lists_path # redirecting to lists
  #   else
  #     render :new
  #   end
  # end
