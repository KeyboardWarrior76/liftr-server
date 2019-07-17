class Api::WorkSetsController < ApplicationController
    before_action :set_rep_scheme

    def index
        render( json: @rep_scheme.work_sets.all() )
    end

    private
        def work_set_params
            params.require(:work_set).permit(:reps, :weight, :rpe)
        end

        def set_rep_scheme
            @rep_scheme = RepScheme.find(params[:rep_scheme_id])
        end
end
