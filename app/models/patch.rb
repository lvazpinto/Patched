class Patch < ApplicationRecord
  belongs_to :user
  has_many :patch_vegetables
  has_many :vegetables, through: :patch_vegetables
  has_one_attached :photo
end
