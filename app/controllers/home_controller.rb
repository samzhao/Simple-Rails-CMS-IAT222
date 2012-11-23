class HomeController < ApplicationController
  def index
  end

  def admin
  	@users = User.all
  	authorize! :manage, :admin, message: "Access denied."
  end
end
