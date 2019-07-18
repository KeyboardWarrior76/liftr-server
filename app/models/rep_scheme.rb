class RepScheme < ApplicationRecord
  belongs_to :exercise, optional: true
  belongs_to :training_date
  has_many :work_sets, dependent: :destroy
end
