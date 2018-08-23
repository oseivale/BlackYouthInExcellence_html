class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :time, :numericality => {:greater_than => 24}, presence: true
end
