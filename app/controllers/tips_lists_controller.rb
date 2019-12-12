class TipsListsController < ApplicationController
  def new
    # grab list
    @list = List.find(params[:list_id])
    # give selection of all lists
    # pass as hidden form to create
  end

  def create
    @list = List.find(params[:list_id])
    # grab params of tip
    @tip = Tip.find(params[:tip_id])
    # connect id of tip to list id
    @tip.list = @list
    if @tip.save
      redirect_to tip_path(@tip)
    else
      render :new
    end
  end
end
