class TeamsController < ApplicationController
before_action :populatePastGames

def populatePastGames
  teams = Team.all
  teams.each do |team|
    team.competiting_teams.each do |cteam|
      score = cteam.score
      thisTeamId = cteam.team_id
      gameId = cteam.game_id
      otherTeam = CompetitingTeam.where(game_id: gameId).where.not(team_id:  thisTeamId)
      otherTeamName = otherTeam.pluck(:name)
      otherTeamName = otherTeamName[0].to_s
      otherTeamScore = otherTeam.pluck(:score)
      otherTeamScore = otherTeamScore[0].to_i
      if ([] == PastGame.where(score: score, team: team, other_team: otherTeamName, other_team_score: otherTeamScore))
        PastGame.create({ score: score, team: team, other_team: otherTeamName, other_team_score: otherTeamScore})
      end
    end
  end
end

  def index
    teams = Team.all
    # teams.each do |team|
    #   team.competiting_teams.each do |cteam|
    #     score = cteam.score
    #     thisTeamId = cteam.team_id
    #     gameId = cteam.game_id
    #     otherTeam = CompetitingTeam.where(game_id: gameId).where.not(team_id:  thisTeamId)
    #     otherTeamName = otherTeam.pluck(:name)
    #     otherTeamName = otherTeamName[0].to_s
    #     otherTeamScore = otherTeam.pluck(:score)
    #     otherTeamScore = otherTeamScore[0].to_i
    #     if ([] == PastGame.where(score: score, team: team, other_team: otherTeamName, other_team_score: otherTeamScore))
    #       PastGame.create({ score: score, team: team, other_team: otherTeamName, other_team_score: otherTeamScore})
    #     end
    #   end
    # end
    render json: teams
  end

  def show
    team = Team.find(params[:id])
    render json: team, status: 200
  end

end
