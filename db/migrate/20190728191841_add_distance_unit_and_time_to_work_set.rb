class AddDistanceUnitAndTimeToWorkSet < ActiveRecord::Migration[5.2]
  def change
    add_column :work_sets, :distance_unit, :string
    add_column :work_sets, :hours, :integer
    add_column :work_sets, :minutes, :integer
    add_column :work_sets, :seconds, :integer
  end
end
