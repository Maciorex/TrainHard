class FriendshipsController < ApplicationController

  def add_friend
    @friend = User.find(params[:friend])
    current_user.friendships.build(friend_id: @friend.id)
    if current_user.save
      flash[:success] = "CHOPIE MOSZ FONFLA"
    end
    redirect_to my_friends_path
  end

  def destroy
    @friendship = current_user.friendships.where(friend_id: params[:id]).first
    @friendship.destroy
    flash[:notice] = "JUŻ ŻEŚCIE NIE SOM FONFLAMI"
    redirect_to my_friends_path
  end

  def search
    if params[:friend_search].blank?
      flash.now[:danger] = "Empty search string"
    else
      @search_user = SearchUserQuery.new(params[:friend_search]).result
      flash.now[:danger] = "No such user :(" if @search_user.blank?
    end
    render 'results'
  end
end
