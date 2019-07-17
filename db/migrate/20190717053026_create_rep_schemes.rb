class CreateRepSchemes < ActiveRecord::Migration[5.2]
  def change
    create_table :rep_schemes do |t|
      t.belongs_to :exercise, foreign_key: true
      t.belongs_to :training_date, foreign_key: true
      t.text :comment

      t.timestamps
    end
  end
end
