class UsersController < ApplicationController
  def home
    @user = Users.find_by_name(params[:name])
  end

  def login
    @user = Users.find(1)
  end
end
