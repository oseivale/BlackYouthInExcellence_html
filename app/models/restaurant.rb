class Restaurant < ApplicationRecord
  has_many :reservations, dependent: :destroy
  belongs_to :user
  validates :name, :address, :menu, :neighborhood, presence: true
  validates :price_range, :length => {minimum: 1, maximum: 5}
  validates :open, :close, :inclusion => 0..23, presence: true
end
