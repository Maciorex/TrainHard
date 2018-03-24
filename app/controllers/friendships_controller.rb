class FriendshipsController < ApplicationController

  def add_friend; end

  def destroy; end

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
