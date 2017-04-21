class PagesController < ApplicationController
  
  def organization
    @teams = Team.all
    @members = Member.all
  end
  
  def team_show
    @team = Team.find_by(id: params[:id])
  end

  def profile_show
    @profile = Member.find_by(id: params[:id])
  end

  def profile
    @profile = Member.find_by(id: params[:id])
    @teams = Team.all
  end

  def update
    user = Member.find_by(id: params[:id])
    user.first_name = params[:first_name]
    user.last_name = params[:last_name]
    user.email = params[:email]
    user.height = params[:height]
    user.weight = params[:weight]
    user.privat = params[:privat]
    user.turned_pro = params[:turned_pro]
    # binding.pry
    if user.save
      redirect_to "/member/#{user.id}"
    else
    render :profile
    end
  end

end
