require "open-uri"

class GamesController < ApplicationController
  def new
    chars = ('A'..'Z').to_a
    @letters = Array.new(10) { chars.sample }
  end

  def score
  @game = params[:game]
  url = "https://dictionary.lewagon.com/#{@game}";
  @games = JSON.parse(URI.parse(url).read)

  # if @games["found"] == true
  #   return "Congrats, #{@game["word"] is a valid word}"
  # else
  #   return "Sorry, #{@game["word"] is not a valid word}"
  # end
  end
end
