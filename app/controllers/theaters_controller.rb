class TheatersController < ApplicationController
   def index
      theaters = Theater.all
      render json: theaters.to_json(methods: [:movies])
   end

   # add the ability to view  to view individual 
   def show
      theater = Theater.find_by!(id: params[:id])
      render json: theater.to_json(methods: [:movies])
   end

   def showtimes
      theater = Theater.find_by!(id: params[:id])
      movie = Movie.find_by!(id: params[:movie_id])
      render json: {
         theater: theater,
         movie: movie.as_json(methods: [:showtimes])
      }
   end

end
