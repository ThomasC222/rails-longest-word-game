class GamesController < ApplicationController
  def new
    @letters = [*('A'..'Z')].sample(10)
  end
  def score
    valid = URI.open("https://wagon-dictionary.herokuapp.com/?q=#{game}").read
    json = JSON.parse(valid)
    english = json['found']

  end
end
# .strip
