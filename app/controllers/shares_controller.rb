class SharesController < ApplicationController
  def index
    @guests = Share.all
  end

  def new_guest
    @guest = User.new
  end

  def invite_guest
    new_guest = User.invite!(user_params)
    redirect_to guests_path
  end

  def share_list
    List.find(params[:id])
    raise
  end

  private

  def user_params
    params.require(:user).permit(:email)
  end
end
