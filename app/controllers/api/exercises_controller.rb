class Api::ExercisesController < ApplicationController
    def search
        render( json: Exercise.search(params[:term]) )
    end
end
