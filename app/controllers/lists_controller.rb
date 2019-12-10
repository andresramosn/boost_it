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

  def list_params
    params.require(:list).permit(:name)
  end
end
