class HallsController < ApplicationController
  def show
    @hall = Hall.find(params[:hall_id])
    @movie = Movie.find(params[:movie_id])
    @shows = @movie.shows.where(:hall_id => @hall)
  end
end
