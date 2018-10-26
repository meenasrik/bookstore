class AuthorsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @authors = User.where(author: true)
  end
end
