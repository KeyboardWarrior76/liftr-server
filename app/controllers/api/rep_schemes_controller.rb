class Api::RepSchemesController < ApplicationController
    before_action :set_training_date

    def index
        render( json: @training_date.rep_schemes.all() )
    end

    def show
        
    end

    def create

    end

    def update
        
    end

    def destroy
        
    end

    private
        def rep_scheme_params
            params.require(:rep_scheme).permit(:comment)
        end

        def set_training_date
            @training_date = TrainingDate.find(params[:training_date_id])
        end
end
