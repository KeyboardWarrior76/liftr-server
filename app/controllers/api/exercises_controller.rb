class Api::ExercisesController < ApplicationController
    def search
        render( json: Exercise.search(
            params[:term], 
            params[:body_part], 
            params[:kind],
            params[:offset],
            params[:limit],
        ))
    end
end
