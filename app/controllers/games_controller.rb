require 'json'
require 'open-uri'

class GamesController < ApplicationController
  def new
    @letters = []
    10.times { @letters << ("a".."z").to_a.sample }
  end

  def score
    given_word = params[:word]
    url = "https://wagon-dictionary.herokuapp.com/#{given_word}"
    word_serialized = URI.open(url).read
    word = JSON.parse(word_serialized)
    raise
  end
end