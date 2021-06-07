class Patch < ApplicationRecord
  belongs_to :user
  has_many :patch_vegetables
  has_many :vegetables, through: :patch_vegetables
end
