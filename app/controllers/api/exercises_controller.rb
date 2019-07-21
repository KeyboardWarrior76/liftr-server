class Api::ExercisesController < ApplicationController
    def search
        render( json: Exercise.search(params[:term], params[:body_part]) )
    end
end
