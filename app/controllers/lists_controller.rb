class ListsController < ApplicationController
  before_action :set_user

  def index
    @lists = List.where(user_id: @user.id)
  end

  def show
  end

  def new
  end

  def create
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
end
