class Api::TrainingDatesController < ApplicationController
    def index
        render( json: current_user.training_dates.all() )
    end
end
