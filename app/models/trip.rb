class Trip < ApplicationRecord
  has_many :stops, dependent: :destroy
  validates :destination, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :budget, presence: true
end
