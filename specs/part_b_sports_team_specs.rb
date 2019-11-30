# Part B
#
# Now we would like you to make a class that represents a sports team.
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.
# Create a setter method to allow the coach's name to be updated.
# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.
# Create a method that adds a new player to the players array.
# Add a method that takes in a string of a player's name and checks to see if they are in the players array.
# Add a points property into your class that starts at 0.
#Create a method that takes in whether the team has won or lost and updates the points property for a win.


require('minitest/autorun')
require('minitest/reporters')
require_relative('../part_b_sports_team')
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSports_Team < MiniTest::Test

  #could have def setup @team and define team then refer to @team if helpful

  def test_get_team_name
    team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
    assert_equal("West Bromwich Albion", team.team_name())
  end

  def test_get_players
    team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
    assert_equal(["Fred", "George", "Bert"], team.players())
  end

  def test_get_coach
    team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
    assert_equal("Alf Best", team.coach())
  end

  def test_set_coach
    team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
    team.coach = "George Best"
    assert_equal("George Best", team.coach)
  end

def test_add_new_player
    team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
    assert_equal(["Fred", "George", "Bert", "Jeff Astle"], team.add_new_player("Jeff Astle"))
end

def test_players_name_included_not_included
  team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
  assert_equal("Fred is in the array", team.players_name_included("Fred"))
end

def test_players_name_included_included
  team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best")
  assert_equal("Player not in array", team.players_name_included("Alfred"))
end

def test_points_scored
  team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best",)
  assert_equal(0, team.points_scored)
end

def test_match_outcome
  team = Sports_Team.new("West Bromwich Albion", ["Fred", "George", "Bert"], "Alf Best",)
  assert_equal(3, team.match_outcome("won"))
end


end
