class CompetitingTeamsController < ApplicationController
  def index
    comptTeams = CompetitingTeam.all
    # comptTeams.each do |cteam|
    #   idNum = cteam.team_id
    #   team = Team.where(id: idNum).pluck(:name)
    #   team = team[0].to_s
    #   cteam.name = team
    #   cteam.save
    # end
    render json: comptTeams
  end

  def show
    comptTeam = CompetitingTeam.find(params[:id])
    # idNum = comptTeam.team_id
    # team = Team.where(id: idNum).pluck(:name)
    # team = team[0].to_s
    # comptTeam.name = team
    # comptTeam.save
    render json: comptTeam, status: 200
  end

end
