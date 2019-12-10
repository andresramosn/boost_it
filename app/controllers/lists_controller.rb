class ListsController < ApplicationController
  before_action :set_user

  def index
    @lists = List.where(user_id: @user.id)
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = @user
    if @list.save
      redirect_to lists_path # redirecting to index
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

  def set_user
    @user = User.find(params[:id])
  end

  def list_params
    params.require(:list).permit(:name)
  end
end
