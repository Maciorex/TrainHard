class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  protect_from_forgery with: :exception
 
  def current_user
    @current_user ||= begin
      devise_session_key = session["warden.user.user.key"]
      devise_user = User.find(devise_session_key[0][0]) if devise_session_key
      user = devise_user || NullObjects::GuestUser.new
      user.decorate
    end
  end

  def user_signed_in?
    current_user.is_a?(User)
  end
end
