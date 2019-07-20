class TrainingDate < ApplicationRecord
  belongs_to :user
  has_many :rep_schemes, dependent: :destroy

  def self.get_dates_only(user_id)
    TrainingDate.find_by_sql(["
    SELECT date FROM training_dates
    WHERE user_id = ?  
    ", user_id]).map {|date| date.date }
  end
end
