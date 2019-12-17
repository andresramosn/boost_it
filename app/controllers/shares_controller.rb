class SharesController < ApplicationController
  def index
    @guests = Share.all
  end

  def new_guest
    @guest = User.new
  end

  def invite_url
  end

  def invite_guest
    new_guest = User.invite!(user_params) do |u|
      u.skip_invitation = true
    end
    token = new_guest.raw_invitation_token
    if Rails.env.production?
      new_guest.invite_url = "http://boostit.herokuapp.com/users/invitation/accept?invitation_token=#{token}"
    else
      new_guest.invite_url = "http://localhost:3000/users/invitation/accept?invitation_token=#{token}"
    end
    new_guest.save!
    params[:lists_id].each do |list_id|
      Share.create(user_id: new_guest.id, list_id: list_id)
    end
    redirect_to guests_invite_url_path({id: new_guest.id})
  end

  def share_list
    share_list = List.find(params[:list_id])
    share_user_guest = User.find(params[:guest_user_id])
    Share.create(user_id: share_user_guest.id, list_id: share_list.id)
    redirect_to guests_path
  end

  def show
    @lists = current_user.lists
    @guest = User.find(params[:guest_user_id])
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name)
  end
end
