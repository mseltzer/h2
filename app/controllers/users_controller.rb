class UsersController < ApplicationController
  def index

  end

  def home
    @user = Users.find_by_name(params[:name]) || Users.create(:name => params[:name])
  end

  def login
    #@user = Users.find(1)
  end

  def schoolTourHome
    @school = Schools.find(1)
  end
end
