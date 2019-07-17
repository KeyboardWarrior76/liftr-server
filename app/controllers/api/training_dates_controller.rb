class Api::TrainingDatesController < ApplicationController
    def index
        render( json: current_user.training_dates.all() )
    end

    def get_by_date
        render( json:  current_user.training_dates.find_by(date: params[:date]) )
    end

    private
        def training_date_params
            params.require(:training_date).permit(:date)
        end
end
