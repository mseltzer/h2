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
    schoolVisit = SchoolVisits.where(:userId => session[:user].id,
                                     :schoolId => session[:school].id).first()
    if schoolVisit == nil
      schoolVisit = SchoolVisits.new
      schoolVisit.userId = session[:user].id
      schoolVisit.schoolId = session[:school].id
      schoolVisit.save
    else
      schoolVisit.updated_at = Time.now
      schoolVisit.save
    end

  end

  def notes
    @area = session[:area];
  end

  def recommend
  end

  def help
  end

  def help2
  end

  def help3
  end

  def help4
  end

  def classrooms
    @area = Areas.find(1)
    @questions = Questions.find_all_by_areaId(@area.id)
    @user = session[:user]
    @lowerBound = Array.new
    @upperBound = Array.new
    @questions.each do |q|
      @lowerBound.push(Responses.where(:questionId => q.id, :responseId => 1))
      @upperBound.push(Responses.where(:questionId => q.id, :responseId => 5))
    end
    session[:area] = @area;
  end

  def tips
    @areaTips = Tips.find_all_by_areaId(params[:id])
  end
end
