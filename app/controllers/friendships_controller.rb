class FriendshipsController < ApplicationController

  def add_friend; end

  def destroy; end

  def search
    if params[:friend_search].blank?
      flash[:danger] = "Empty search string"
      render "users/my_friends"
    else
      @user = User.search_user(params[:friend_search])
      if @users.blank?
        flash.now[:danger] = "No such user :("
        render "users/my_friends"        
      end
    end
    render 'results' unless @users.blank?
  end
end
