class RemoveHarvestingFromInstructions < ActiveRecord::Migration[6.0]
  def change
    remove_column :instructions, :harvesting, :text
  end
end
