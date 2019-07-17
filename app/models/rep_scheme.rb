class RepScheme < ApplicationRecord
  belongs_to :exercise
  belongs_to :training_date
  has_many :work_sets
end
