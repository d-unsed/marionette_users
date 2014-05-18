class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    gon.rabl
    @user = User.first
    gon.rabl 'app/views/users/show.json.rabl', as: 'currentUser'
  end
end
