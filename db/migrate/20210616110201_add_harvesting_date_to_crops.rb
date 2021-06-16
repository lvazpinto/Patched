class AddHarvestingDateToCrops < ActiveRecord::Migration[6.0]
  def change
    add_column :crops, :harvesting_date, :date
  end
end
