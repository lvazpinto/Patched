class AddPlantingInstructionsStepOneToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :planting_instructions_step_one, :text
  end
end
