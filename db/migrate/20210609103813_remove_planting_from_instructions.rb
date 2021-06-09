class RemovePlantingFromInstructions < ActiveRecord::Migration[6.0]
  def change
    remove_column :instructions, :planting, :text
  end
end
