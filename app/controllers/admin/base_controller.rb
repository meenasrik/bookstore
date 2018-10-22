class Admin::BaseController < ApplicationController
  before_filter :ensure_is_admin!

  def ensure_is_admin!
    unless current_user and current_user.admin?
      flash[:alert] = "You do not have authorization for that"
      redirect_to :back
    end
  end
end
