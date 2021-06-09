class AddHarvestingInstructionsStepThreeToInstructions < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :harvesting_instructions_step_three, :text
  end
end
