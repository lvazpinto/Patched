class PatchVegetable < ApplicationRecord
  belongs_to :vegetable
  belongs_to :patch

  scope :planted, -> { where.not(planting_date: nil) }

  def days_until_harvest
    harvest_date = planting_date + vegetable.growing_length.days

    [harvest_date - Date.today, 0].max.to_i
  end
end
