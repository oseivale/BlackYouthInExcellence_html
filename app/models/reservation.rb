class Reservation < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :time, :numericality => {:less_than => 24}, presence: true
  validate :operation

  def operation
    unless self.time >= restaurant.open && self.time < restaurant.close
      self.errors[:time] << "Must be within restaurant's hours of operation."
    end
  end

end
