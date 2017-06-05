require "sinatra"
require "sinatra/contrib/all"
require "pry-byebug"
require "json"

require_relative "./models/rock_paper_scissors"

get "/welcome" do
  erb(:welcome)
end

get "/rps/:player1/:player2" do
  rps = RockPaperScissors.new(params[:player1],
    params[:player2])
    @play = rps.play()
    erb(:result)
end
