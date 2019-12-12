class ListsController < ApplicationController




  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save!
      redirect_to lists_path # redirecting to index
    else
      render :new
    end
  end

  def index
    @lists = List.where(user_id: current_user.id)
  end

  def show
    @list = List.find(params[:id])
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
