class Patch < ApplicationRecord
  belongs_to :user
  has_many :crops
  has_many :vegetables, through: :crops
  has_one_attached :photo
end
