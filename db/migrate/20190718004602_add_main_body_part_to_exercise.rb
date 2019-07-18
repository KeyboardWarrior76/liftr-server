class AddMainBodyPartToExercise < ActiveRecord::Migration[5.2]
  def change
    add_column :exercises, :main_bodypart, :string
  end
end
