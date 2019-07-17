class AddExerciseNameToRepScheme < ActiveRecord::Migration[5.2]
  def change
    add_column :rep_schemes, :exercise_name, :string
  end
end
