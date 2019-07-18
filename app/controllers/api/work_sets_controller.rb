class Api::WorkSetsController < ApplicationController
    before_action :set_rep_scheme, only: [:index, :create]
    before_action :set_work_set, only: [:update]

    def index
        render( json: @rep_scheme.work_sets.all().sort_by(&:created_at) )
    end

    def create
        work_set = @rep_scheme.work_sets.new(work_set_params())
        if work_set.save()
            render( json: work_set, status: 201 )
        else
            render( json: { error: work_set.error, message: "Data Not Created" }, status: 422 )
        end
    end

    def update
        if @work_set.update(work_set_params())
            render( json: @work_set, status: 201 )
        else
            render( json: { error: @work_set.errors, message: "Data Not Updated" }, status: 422 )
        end
    end

    def destroy
        
    end

    private
        def work_set_params
            params.require(:work_set).permit(:reps, :weight, :rpe)
        end

        def set_rep_scheme
            @rep_scheme = RepScheme.find(params[:rep_scheme_id])
        end

        def set_work_set
            @work_set = WorkSet.find(params[:id])
        end
end
