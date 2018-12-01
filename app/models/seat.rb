class Seat < ApplicationRecord
  belongs_to :show
  has_one :booking, dependent: :destroy
end
