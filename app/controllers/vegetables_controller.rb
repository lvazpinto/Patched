class VegetablesController < ApplicationController
  def show
    @patch = Patch.find(params[:patch_id])
    @vegetable = Vegetable.find(params[:id])
  end
end
