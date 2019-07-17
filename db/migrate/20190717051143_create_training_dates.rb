class CreateTrainingDates < ActiveRecord::Migration[5.2]
  def change
    create_table :training_dates do |t|
      t.belongs_to :user, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
