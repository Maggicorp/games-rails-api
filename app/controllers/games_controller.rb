class GamesController < ApplicationController
before_action :populateTeamName

def populateTeamName
  comptTeams = CompetitingTeam.all
  comptTeams.each do |cteam|
    idNum = cteam.team_id
    team = Team.where(id: idNum).pluck(:name)
    team = team[0].to_s
    cteam.name = team
    cteam.save
  end
end

  def index
    games = Game.all
    render json: games
  end

  def show
    game = Game.find(params[:id])
    render json: game, status: 200
  end

end
