class AddExerciseKindToRepScheme < ActiveRecord::Migration[5.2]
  def change
    add_column :rep_schemes, :exercise_kind, :string
  end
end
