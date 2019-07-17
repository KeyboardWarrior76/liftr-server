class CreateWorkSets < ActiveRecord::Migration[5.2]
  def change
    create_table :work_sets do |t|
      t.integer :reps
      t.integer :weight
      t.float :rpe
      t.belongs_to :rep_scheme, foreign_key: true

      t.timestamps
    end
  end
end
