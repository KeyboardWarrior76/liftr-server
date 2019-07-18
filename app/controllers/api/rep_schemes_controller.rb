class Api::RepSchemesController < ApplicationController
    before_action :set_training_date, only: [:index, :create]
    before_action :set_exercise, only: [:create]
    before_action :set_rep_scheme, only: [:update, :destroy]

    def index
        render( json: @training_date.rep_schemes.all() )
    end

    def show
        
    end

    def create
        rep_scheme = @training_date.rep_schemes.new(
            exercise_id: @exercise.id,
            exercise_name: @exercise.name,
        )

        if rep_scheme.save()
            render( json: rep_scheme, status: 201 )
        else
            render( json: { error: rep_scheme.errors, message: "Could Not Create Data" }, status: 422 )
        end
    end

    def update
        if @rep_scheme.update(rep_scheme_params())
            render( json: rep_scheme )
        else
            render( json: { error: rep_scheme.erros, message: "Could Not Update Data" }, status: 422 )
        end
    end

    def destroy
        @rep_scheme.destroy()
        render( json: "Data Deleted" )
    end

    private
        def rep_scheme_params
            params.require(:rep_scheme).permit(:comment)
        end

        def set_training_date
            @training_date = TrainingDate.find(params[:training_date_id])
        end

        def set_exercise
            @exercise = Exercise.find(params[:exercise_id])
        end

        def set_rep_scheme
            @rep_scheme = RepScheme.find(params[:id])
        end
end
