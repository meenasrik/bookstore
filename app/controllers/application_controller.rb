class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  # def current_user
  #   @current_user ||= User.where(id: session[:user_id]).first
  # end
end
