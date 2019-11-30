class Sports_Team

#look at this section when naming
#could do read-only, team_name, players, points - coach read/write

attr_accessor :team_name, :players, :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

# def get_team_name()
#   return @team_name
# end
#
# def get_players()
#   return @players
# end
#
# def get_coach()
#   return @coach
# end
#
# def set_coach(coach)
#   @coach = coach
# end

def add_new_player(new_player)
  return @players << new_player
end

def players_name_included(player_name)
  for player in players
    if player == player_name
      return "#{player_name} is in the array"
    end
  end
  return "Player not in array"
end

def points_scored
  return @points
end

def match_outcome(result)
  return @points += 3 if result == "won"
  return @points += 0 if result == "lost"
end
end

#can use boolean - add if win, otherwise nil
