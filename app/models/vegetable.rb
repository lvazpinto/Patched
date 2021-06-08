class Vegetable < ApplicationRecord
  has_many :patch_vegetables
  has_many :instructions
  has_many :patches, through: :patch_vegetables
  has_one_attached :photo
end
