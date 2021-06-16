class Crop < ApplicationRecord
  belongs_to :vegetable
  belongs_to :patch

  scope :planted, -> { where.not(planting_date: nil) }
  scope :harvested, -> { where.not(harvesting_date: nil) }

  def planted?
    !planting_date.nil?
  end

  def harvested?
    !harvesting_date.nil?
  end

  def days_until_harvest
    harvest_date = planting_date + vegetable.growing_length.days

    [harvest_date - Date.today, 0].max.to_i
  end
end
