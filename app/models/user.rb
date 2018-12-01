class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy

  mount_uploaders :images, PictureUploader

  serialize :images

  has_attached_file :avatar, styles:
  { :thumb => "70x70#", :small => "30x30#", :medium => "200x200" }, default_url: "/images/:style/missing.png"

  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
end
