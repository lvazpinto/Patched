class CreatePatches < ActiveRecord::Migration[6.0]
  def change
    create_table :patches do |t|
      t.integer :patch_area
      t.integer :hours_of_sun
      t.string :location
      t.boolean :status
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
