class ListsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    @list.user = @user
    @list.save
    redirect_to list_path(@list)
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
