class UsersController < ApplicationController
  respond_to :json

  def index
    sleep 2
    @users = User.all
  end
end
