class AddAttributesDefaultsToPatches < ActiveRecord::Migration[6.0]
  def change
    change_column :patches, :status, :string, default: "empty"
    change_column :patches, :location, :string, default: "Lisboa, Portugal"
    change_column :patches, :patch_area, :string, default: "20m2"
  end
end
