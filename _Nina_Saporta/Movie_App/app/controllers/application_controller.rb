class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
def create
  	@movies = Movie.new(params [:movie])
  	@movies.save
  	redirect_to @movies
end
