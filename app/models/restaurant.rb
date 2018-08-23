class Restaurant < ApplicationRecord
  has_many :reservations
  belongs_to :user
  validates :open, :close, :inclusion => 0..23, presence: true
end
