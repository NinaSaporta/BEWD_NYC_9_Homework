class MoviesController < ApplicationController
def create
  	@movies = Movie.new(params [:title][:description][:year_released])
  	@movies.save
  	redirect_to @movies
end

  def index
  	@movies= Movies.all
  end
end
