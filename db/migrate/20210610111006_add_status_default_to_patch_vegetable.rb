class AddStatusDefaultToPatchVegetable < ActiveRecord::Migration[6.0]
  def change
    change_column :patch_vegetables, :status, :string, default: "planted"
  end
end


