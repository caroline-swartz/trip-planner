class Trip < ApplicationRecord
  validates :destination, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :budget, presence: true
end
