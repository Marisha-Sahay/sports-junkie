class PagesController < ApplicationController
  
  def home
  end

  def organization
    @teams = Team.all
    @members = Member.all
  end
  
  def sport_show
    @sport = Team.find_by(id: params[:id])
  end

  def profile
    @profile = Member.find_by(id: params[:id])
    @teams = Team.all
  end

  def update
  end

end
