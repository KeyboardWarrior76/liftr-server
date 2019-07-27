class AddDistanceToWorkSet < ActiveRecord::Migration[5.2]
  def change
    add_column :work_sets, :distance, :string
  end
end
