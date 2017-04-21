class PagesController < ApplicationController
  
  def organization
    @teams = Team.all
    @members = Member.all
  end
  
  def team_show
    @team = Team.find_by(id: params[:id])
    @won_data = execute_statement("select opponent, won, count(id) from matches where team_id = #{@team.id} group by 1,2")
    @matches = Match.where("team_id = #{@team.id}")
  end

  def profile_show
    @profile = Member.find_by(id: params[:id])
    # @teams = [['American football', MemberTeamAgg.where(team_id: 1).size], ['Basketball', MemberTeamAgg.where(team_id: 2).size],['Baseball', MemberTeamAgg.where(team_id: 3).size],['Soccer', MemberTeamAgg.where(team_id: 4).size],['Ice hockey', MemberTeamAgg.where(team_id: 5).size],MemberTeamAgg.where("member_id = #{@profile.id}")]
    @teams = MemberTeamAgg.where("member_id = #{@profile.id}")
    @matches_played = execute_statement("select team_id, sum(no_of_matches_played) from member_team_aggs where member_id = #{@profile.id} group by 1")
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
