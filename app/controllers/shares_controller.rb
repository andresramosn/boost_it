class SharesController < ApplicationController
  def index
    @guests = Share.all
    @guests_filtered = []
    @lists = current_user.lists
    @guests_lists_count = []

    @guests.each do |guest|
      if List.find(guest.list_id).user_id == current_user.id
        if @guests_filtered.exclude?(guest.user_id)
          @guests_filtered << guest.user_id
        end
      end
    end

    @guests_filtered.each do |g_id|
      guest_lists = []
      User.find(g_id).shares.map(&:list_id).each do |list|
        if List.find(list).user_id == current_user.id
          guest_lists << list
        end
      end
    @guests_lists_count << guest_lists.length
    end
  end


  def new_guest
    @guest = User.new
  end

  def invite_url
  end

  def invite_guest
    # skip auto-mailer from devise
    new_guest = User.invite!(user_params) do |u|
      u.skip_invitation = true
    end
    token = new_guest.raw_invitation_token
    # adding devise invite token as instance attribute, for every environment
    if Rails.env.production?
      new_guest.invite_url = "http://boostit.herokuapp.com/users/invitation/accept?invitation_token=#{token}"
    else
      new_guest.invite_url = "http://localhost:3000/users/invitation/accept?invitation_token=#{token}"
    end
    new_guest.save!
    # create a share instance (list and user)
    params[:lists_id].each do |list_id|
      Share.create(user_id: new_guest.id, list_id: list_id)
    end
    # calling mailer method welcome to create view and deliver e-mail
    UserMailer.with(user: new_guest).welcome.deliver_now
    redirect_to guests_invite_url_path(id: new_guest.id)
  end

  def share_list
    share_list = List.find(params[:list_id])
    share_user_guest = User.find(params[:guest_user_id])
    Share.create(user_id: share_user_guest.id, list_id: share_list.id)
    if params[:path] == "add"
      redirect_to guests_show_path(guest_user_id: params[:guest_user_id])
    else
      redirect_to guests_path
    end
  end

  def show
    @guest = User.find(params[:guest_user_id])

    @lists = current_user.lists
    @shared_lists = Share.where(user_id: @guest.id).map(&:list_id).map do |list_id|
      List.find(list_id)
    end

    @unshared_lists = []

    @lists.each do |to_share_list|
      if @shared_lists.exclude?(to_share_list)
        @unshared_lists << to_share_list
      end
    end

    @guest_lists = @shared_lists.length
    @guest_tips = 0
    @shared_lists.each do |list|
      if list.user_id == current_user.id
        @guest_tips += list.tips.length
      end
    end
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name)
  end
end
