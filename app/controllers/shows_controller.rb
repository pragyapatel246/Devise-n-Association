class ShowsController < ApplicationController
  def show
    @show = Show.find(params[:show_id])
    @movie = @show.movie
    @hall= Hall.find(@show.hall_id)
    @seats = @show.seats
  end
end
