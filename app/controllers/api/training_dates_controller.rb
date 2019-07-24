class Api::TrainingDatesController < ApplicationController
    before_action :set_training_date, only: [:destroy]

    def index
        render( json: current_user.training_dates.all() )
    end

    def index_of_dates_only
        puts "============================================================"
        request.headers["access-token"]
        puts "============================================================"
        render( json: TrainingDate.get_dates_only(current_user.id) )
    end

    def get_by_date
        render( json:  current_user.training_dates.find_by(date: params[:date]) )
    end

    def create
        if(current_user.training_dates.find_by(date: params[:date])) 
            return render( json: "Data Already Exists", status: 422 )
        end

        training_date = current_user.training_dates.new(training_date_params())

        if(training_date.save())
            render( json: training_date, status: 201)
        else
            render( 
                json: { 
                    error: training_date.errors, 
                    message: "Could Not Create Data" 
                    }, 
                status: 422 ,
            )
        end
    end

    def destroy
        @training_date.destroy()
        render( json: "Data Deleted" )
    end

    private
        def training_date_params
            params.require(:training_date).permit(:date)
        end

        def set_training_date
            @training_date = TrainingDate.find(params[:id])
        end
end
