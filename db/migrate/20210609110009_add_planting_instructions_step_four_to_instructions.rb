class AddPlantingInstructionsStepFourToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :planting_instructions_step_four, :text
  end
end
