class Show < ApplicationRecord
  belongs_to :movie
  belongs_to :hall
  has_many :bookings, dependent: :destroy
  has_many :seats, dependent: :destroy
end
