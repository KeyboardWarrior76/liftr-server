class RepScheme < ApplicationRecord
  belongs_to :exercise, optional: true
  belongs_to :training_date
  has_many :work_sets, dependent: :destroy

  def self.get_rep_scheme_history(user_id, exercise_id, limit=10)

    User.find_by_sql(["
      SELECT 
        rs.*, 
        tr.date 
      FROM 
        rep_schemes AS rs, 
        training_dates AS tr
      WHERE tr.user_id = ?
      AND rs.training_date_id = tr.id
      AND rs.exercise_id = ?
      ORDER BY tr.date DESC
      LIMIT ?
    ", user_id, exercise_id, limit])
  end
end
