class HomesController < ApplicationController

  def home
    @unreleased_movies = Movie.not_released
    @released_movies = Movie.released

  end
  def index

  end

  def show
  end
end
