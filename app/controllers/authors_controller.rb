class AuthorsController < ApplicationController
  skip_before_action :authenticate_user!

  def index
    @authors = Author.all
  end
end
