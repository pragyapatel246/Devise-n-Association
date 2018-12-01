class Movie < ApplicationRecord
  has_many :shows, dependent: :destroy
  has_many :halls, through: :shows, dependent: :destroy

  scope :released, -> { where(release_status: true)}
  scope :not_released, -> { where(release_status: false)}
end
