class Hall < ApplicationRecord
  has_many :shows, dependent: :destroy
  has_many :movies, through: :shows, dependent: :destroy
end
