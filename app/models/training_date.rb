class TrainingDate < ApplicationRecord
  belongs_to :user
  has_many :rep_schemes, dependent: :destroy
end
