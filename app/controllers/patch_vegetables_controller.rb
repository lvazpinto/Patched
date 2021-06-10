class PatchVegetablesController < ApplicationController
  def create
    params["patch_vegetable"]["vegetable"].each do |id|
      if id.to_i != 0
       selected_vegetable = Vegetable.find(id.to_i)
       @current_patch = Patch.find(params["patch_id"].to_i)
       patchvegetable = PatchVegetable.new(vegetable: selected_vegetable, patch: @current_patch)
       patchvegetable.save
      end
    end
    redirect_to patch_path(@current_patch)

  end
end
