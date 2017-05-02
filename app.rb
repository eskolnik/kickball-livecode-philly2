require "sinatra"
require_relative "models/player"
require_relative "models/team"
require_relative "models/team_data"
require 'pry'
require 'uri'

get "/" do
  "<h1>The LACKP Homepage<h1>"
end

get "/teams" do
  @teams = Team.all #> [Team]
  erb :teams
end

get "/teams/:name" do
  name = params[:name]
  @team = TeamData::ROLL_CALL[name.to_sym]
  erb :team
end
