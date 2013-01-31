class UsersController < ApplicationController
  def index

  end

  def home
    @user = Users.find_by_name(params[:name]) || Users.create(:name => params[:name])
    session[:user] = @user
  end

  def login
    #@user = Users.find(1)
  end

  def schoolTourHome
    @school = Schools.find(1)
    session[:school] = @school
  end

  def tourSchool
  end

  def classrooms
    @area = Areas.find(1)
    @questions = Questions.find_all_by_areaId(@area.id)
    @user = session[:user]
  end
end
