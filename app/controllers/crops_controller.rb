class CropsController < ApplicationController
  def update
    @crop = Crop.find(params[:id])
    @crop.update(crop_params)

    redirect_to harvesting_patch_path(@crop.patch)
  end

  private

  def crop_params
    params.require(:crop).permit(:planting_date, :harvesting_date)
  end
end
