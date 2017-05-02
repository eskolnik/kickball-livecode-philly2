require_relative "./team_data"

class Team
  attr_reader :team_name
  def initialize team_name
    @team_name = team_name
  end

  def self.all
    data= TeamData::ROLL_CALL
    teams = []
    data.each_key do |team_name|
      teams << Team.new(team_name)
    end
    return teams
    #=> ["simpson slammers", ...]
  end

end
