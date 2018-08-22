class Reservation < ApplicationRecord
  belongs_to :restaurants
  belongs_to :user
end
