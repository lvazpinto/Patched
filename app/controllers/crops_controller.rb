class CropsController < ApplicationController
  def update
    @crop = Crop.find(params[:id])
    @crop.update(crop_params)

    options = {}
    options[:harvested] = @crop.id if @crop.harvesting_date_previously_changed?

    redirect_to harvesting_patch_path(@crop.patch, options)
  end

  private

  def crop_params
    params.require(:crop).permit(:planting_date, :harvesting_date)
  end
end
